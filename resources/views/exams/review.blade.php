@extends('layouts.app')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>REVIEW</h1>
        </div>

        

        <div class="section-body">
            
            
            @livewire('review', ['user_id' => $userId, 'exam_id' => $examId])
            
        </div>
    </section>
</div>
@stop





