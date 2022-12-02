<?php

namespace App\Http\Livewire;

use App\Models\Exam;
use App\Models\User;
use App\Models\Audio;
use App\Models\Image;
use App\Models\Video;
use Livewire\Component;
use App\Models\Document;
use Livewire\WithPagination;

class Review extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';
    public $user_id;
    public $exam_id;
    public $selectedAnswers = [];
    public $total_question;

    public function mount($user_id, $exam_id)
    {
        $this->user_id = $user_id;
        $this->exam_id = $exam_id;
        $user = User::findOrfail($user_id);
        $user_exam = $user->exams->find($exam_id);
        $answer = $user_exam->pivot->history_answer;

        $result = json_decode($answer);
        $this->selectedAnswers = (array)$result;
    }

    public function questions()
    {
        $exam = Exam::findOrFail($this->exam_id);
        $exam_questions = $exam->questions;
        $this->total_question = $exam_questions->count();

        if($this->total_question >= $exam->total_question) {
            $questions = $exam->questions()->take($exam->total_question)->paginate(1);
        } elseif($this->total_question < $exam->total_question ) {
            $questions = $exam->questions()->take($this->total_question)->paginate(1);
        } 
        return $questions;
    }

    public function getAnswers()
    {
        
    }

    public function render()
    {
        return view('livewire.review', [
            'exam'      => Exam::findOrFail($this->exam_id),
            'questions' => $this->questions(),
            'video'     => new Video(),
            'audio'     => new Audio(),
            'document'  => new Document(),
            'image'     => new Image()
        ]);
    }
}
