@extends('layouts.app')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Assign Student</h1>
        </div>

        <div class="section-body">

            <div class="card">
                <div class="card-header">
                    <h4><i class="fas fa-exam"></i> {{  $exam->name }} </h4>
                </div>

                <div class="card-body">
                   
                    <form action="{{ route('exams.assign', $exam->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        @livewire('student', ['selectedExam' => $exam->id])

                        <button class="btn btn-primary mr-1 btn-submit" type="submit"><i class="fa fa-paper-plane"></i>
                            SIMPAN</button>
                        <button class="btn btn-warning btn-reset" type="reset"><i class="fa fa-redo"></i> RESET</button>

                    </form>
                </div>
            </div>
        </div>
    </section>
</div>

@stop