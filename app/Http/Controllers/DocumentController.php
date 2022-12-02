<?php

namespace App\Http\Controllers;

use App\Models\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DocumentController extends Controller
{
    /**
     * __construct
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['permission:documents.index|documents.create|documents.delete']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $documents = Document::latest()->when(request()->q, function($documents) {
            $documents = $documents->where('title', 'like', '%'. request()->q . '%');
        })->paginate(10);

        return view('documents.index', compact('documents'));
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
            'document'     => 'required|mimes:doc,docx,pdf',
            'caption'   => 'required'
        ]);

        //upload document
        $document = $request->file('document');
        $document->storeAs('public/documents', $document->hashName());

        $document = Document::create([
            'title'     => $request->input('title'),
            'link'     => $document->hashName(),
            'caption'   => $request->input('caption')
        ]);

        if($document){
            //redirect dengan pesan sukses
            return redirect()->route('documents.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('documents.index')->with(['error' => 'Data Gagal Disimpan!']);
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
        $document = Document::findOrFail($id);
        $link= Storage::disk('local')->delete('public/documents/'.$document->link);
        $document->delete();

        if($document){
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
