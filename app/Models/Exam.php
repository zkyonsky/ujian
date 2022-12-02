<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Exam extends Model
{
    use HasFactory;

    /**
     * guarded
     *
     * @var array
     */
    protected $guarded = [];

    public function users(){
        return $this->belongsToMany(User::class)->withPivot('history_answer', 'score')->withTimestamps();
    }

    public function questions(){
        return $this->belongsToMany(Question::class)->withTimestamps();
    }


}
