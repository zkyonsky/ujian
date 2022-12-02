<?php

namespace App\Http\Controllers;

use App\Models\Audio;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AudioController extends Controller
{
    /**
     * __construct
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['permission:audios.index|audios.create|audios.delete']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $audios = Audio::latest()->when(request()->q, function($audios) {
            $audios = $audios->where('title', 'like', '%'. request()->q . '%');
        })->paginate(10);

        return view('audios.index', compact('audios'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title'     => 'required',
            'audio'     => 'required|mimes:mp3,wav',
            'caption'   => 'required'
        ]);

        //upload audio
        $audio = $request->file('audio');
        $audio->storeAs('public/audios', $audio->hashName());

        $audio = Audio::create([
            'title'     => $request->input('title'),
            'link'     => $audio->hashName(),
            'caption'   => $request->input('caption')
        ]);

        if($audio){
            //redirect dengan pesan sukses
            return redirect()->route('audios.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('audios.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $audio = Audio::findOrFail($id);
        $link= Storage::disk('local')->delete('public/audios/'.$audio->link);
        $audio->delete();

        if($audio){
            return response()->json([
                'status' => 'success'
            ]);
        }else{
            return response()->json([
                'status' => 'error'
            ]);
        }
    }
}
