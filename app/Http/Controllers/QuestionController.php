<?php

namespace App\Http\Controllers;

use App\Models\Audio;
use App\Models\Image;
use App\Models\Video;
use App\Models\Subject;
use App\Models\Document;
use App\Models\Question;
use App\Models\User;
use Illuminate\Http\Request;

class QuestionController extends Controller
{
     /**
     * __construct
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['permission:questions.index|questions.create|questions.edit|questions.delete']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $questions = Question::latest()->when(request()->q, function($questions) {
            $questions = $questions->where('detail', 'like', '%'. request()->q . '%');
        })->paginate(10);

        $subject = new Subject();
        $video = new Video();
        $audio = new Audio();
        $document = new Document();
        $image = new Image();
        $user = new User();

        return view('questions.index', compact('questions', 'subject', 'video', 'audio', 'document', 'image', 'user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $subjects = Subject::latest()->get();
        $videos = Video::latest()->get();
        $audios = Audio::latest()->get();
        $images = Image::latest()->get();
        $documents = Document::latest()->get();
        return view('questions.create', compact('subjects', 'videos', 'audios', 'images', 'documents'));
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
            'subject_id'  => 'required',
            'detail'      => 'required',
            'option_A'    => 'required',
            'option_B'    => 'required',
            'option_C'    => 'required',
            'option_D'    => 'required',
            'answer'      => 'required',
            'explanation' => 'required'
        ]);

        $question = Question::create([
            'subject_id'    => $request->input('subject_id'),
            'detail'        => $request->input('detail'),
            'option_A'      => $request->input('option_A'),
            'option_B'      => $request->input('option_B'),
            'option_C'      => $request->input('option_C'),
            'option_D'      => $request->input('option_D'),
            'option_E'      => $request->input('option_E'),
            'video_id'      => $request->input('video_id'),
            'audio_id'      => $request->input('audio_id'),
            'image_id'      => $request->input('image_id'),
            'document_id'   => $request->input('document_id'),
            'answer'        => $request->input('answer'),
            'explanation'   => $request->input('explanation'),
            'created_by'    => Auth()->id()
        ]);


        if($question){
            //redirect dengan pesan sukses
            return redirect()->route('questions.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('questions.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Question $question)
    {
        $subjects = Subject::latest()->get();
        $videos = Video::latest()->get();
        $audios = Audio::latest()->get();
        $images = Image::latest()->get();
        $documents = Document::latest()->get();
        return view('questions.edit', compact('question', 'subjects', 'videos', 'audios', 'images', 'documents'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Question $question)
    {
        $this->validate($request, [
            'subject_id'  => 'required',
            'detail'      => 'required',
            'option_A'    => 'required',
            'option_B'    => 'required',
            'option_C'    => 'required',
            'option_D'    => 'required',
            'answer'      => 'required',
            'explanation' => 'required'
        ]);

        $question = Question::findOrFail($question->id);

        $question->update([
            'subject_id'    => $request->input('subject_id'),
            'detail'        => $request->input('detail'),
            'option_A'      => $request->input('option_A'),
            'option_B'      => $request->input('option_B'),
            'option_C'      => $request->input('option_C'),
            'option_D'      => $request->input('option_D'),
            'option_E'      => $request->input('option_E'),
            'video_id'      => $request->input('video_id'),
            'audio_id'      => $request->input('audio_id'),
            'image_id'      => $request->input('image_id'),
            'document_id'   => $request->input('document_id'),
            'answer'        => $request->input('answer'),
            'explanation'   => $request->input('explanation'),
            'created_by'    => Auth()->id()
        ]);

        if($question){
            //redirect dengan pesan sukses
            return redirect()->route('questions.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('questions.index')->with(['error' => 'Data Gagal Diupdate!']);
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
        $question = Question::findOrFail($id);
        $question->delete();


        if($question){
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
