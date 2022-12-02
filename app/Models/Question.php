<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;

    /**
     * guarded
     *
     * @var array
     */
    protected $guarded = [];

    public function subject(){
        return $this->belongsTo(Subject::class);
    }

    public function exams(){
        return $this->belongsToMany(Exam::class)->withTimestamps();
    }
}
