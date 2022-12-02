<?php

namespace App\Http\Controllers;

use App\Models\Video;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class VideoController extends Controller
{
    /**
     * __construct
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['permission:videos.index|videos.create|videos.delete']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $videos = Video::latest()->when(request()->q, function($videos) {
            $videos = $videos->where('title', 'like', '%'. request()->q . '%');
        })->paginate(10);

        return view('videos.index', compact('videos'));
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
            'video'     => 'required|mimes:mp4,mpeg',
            'caption'   => 'required'
        ]);

        //upload video
        $video = $request->file('video');
        $video->storeAs('public/videos', $video->hashName());

        $video = Video::create([
            'title'     => $request->input('title'),
            'link'     => $video->hashName(),
            'caption'   => $request->input('caption')
        ]);

        if($video){
            //redirect dengan pesan sukses
            return redirect()->route('videos.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('videos.index')->with(['error' => 'Data Gagal Disimpan!']);
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
        $video = Video::findOrFail($id);
        $link= Storage::disk('local')->delete('public/videos/'.$video->link);
        $video->delete();

        if($video){
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
