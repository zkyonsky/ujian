<?php

namespace App\Http\Livewire;

use App\Models\Exam;
use App\Models\User;
use App\Models\Audio;
use App\Models\Image;
use App\Models\Video;
use Livewire\Component;
use App\Models\Document;
use App\Models\Question;
use Livewire\WithPagination;
use Illuminate\Contracts\Session\Session;
use Illuminate\Database\Eloquent\Builder;

class Quiz extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';
    public $exam_id;
    public $user_id;
    public $selectedAnswers = [];
    public $total_question;
    protected $listeners = ['endTimer' => 'submitAnswers'];

    public function mount($id)
    {
        $this->exam_id = $id;
        
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

    public function answers($questionId, $option)
    {
        $this->selectedAnswers[$questionId] = $questionId.'-'.$option;
    }

    public function submitAnswers()
    {
        if(!empty($this->selectedAnswers))
        {
            
            $score = 0;
            foreach($this->selectedAnswers as $key => $value)
            {
                $userAnswer = "";
                $rightAnswer = Question::findOrFail($key)->answer;
                $userAnswer = substr($value, strpos($value,'-')+1);
                $bobot = 100 / $this->total_question;
                if($userAnswer == $rightAnswer){
                    $score = $score + $bobot;
                }
            }
        }else{
            $score = 0;
        }
        
        $selectedAnswers_str = json_encode($this->selectedAnswers);
        $this->user_id = Auth()->id();
        $user = User::findOrFail($this->user_id);
        $user_exam = $user->whereHas('exams', function (Builder $query) {
            $query->where('exam_id',$this->exam_id)->where('user_id',$this->user_id);
        })->count();
        if($user_exam == 0)
        {
            $user->exams()->attach($this->exam_id, ['history_answer' => $selectedAnswers_str, 'score' => $score]);
        } else{
            $user->exams()->updateExistingPivot($this->exam_id, ['history_answer' => $selectedAnswers_str, 'score' => $score]);
        }
        
        return redirect()->route('exams.result', [$score, $this->user_id, $this->exam_id]);
    }

    public function render()
    {
        return view('livewire.quiz', [
            'exam'      => Exam::findOrFail($this->exam_id),
            'questions' => $this->questions(),
            'video'     => new Video(),
            'audio'     => new Audio(),
            'document'  => new Document(),
            'image'     => new Image()
        ]);
    }
}
