@extends('layouts.app')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>QUESTIONS</h1>
        </div>

        

        <div class="section-body">
            
            
            @livewire('quiz', ['id' => $id])
            
        </div>
    </section>
</div>
@stop





