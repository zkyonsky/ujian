<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('subject_id');
            $table->text('detail');
            $table->string('video_id')->nullable();
            $table->string('audio_id')->nullable();
            $table->string('image_id')->nullable();
            $table->string('document_id')->nullable();
            $table->string('option_A')->nullable();
            $table->string('option_B')->nullable();
            $table->string('option_C')->nullable();
            $table->string('option_D')->nullable();
            $table->string('option_E')->nullable();
            $table->text('answer');
            $table->text('explanation')->nullable();
            $table->string('created_by');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('questions');
    }
}
