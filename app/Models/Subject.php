<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use HasFactory;

    /**
     * guarded
     *
     * @var array
     */
    protected $guarded = [];

    public function questions(){
        return $this->hasMany(Question::class);
    }

    public function getName($id){
        return $this->where('id',$id)->value('name');
    }
}
