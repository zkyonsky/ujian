@extends('layouts.app')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>EXAM DETAIL</h1>
        </div>

        <div class="section-body">

            <div class="card">
                <div class="card-header">
                    <h4><i class="fas fa-exam"></i> Hasil {{ $exam->name.' '.$user->name }}</h4>
                </div>

                <div class="card-body">
                    <h4>Score Anda Adalah {{ round($score, 2) }}</h4>
                </div>
                <div class="card-footer">
                    <a href="{{ route('exams.review', [$user->id, $exam->id]) }}" class="btn btn-primary mr-1 btn-submit" role="button" aria-pressed="true">REVIEW</a>
                    <a href="{{ route('exams.index') }}" class="btn btn-warning btn-resetk" role="button" aria-pressed="true">BACK</a>
                </div>
            </div>
        </div>
    </section>
</div>

@stop