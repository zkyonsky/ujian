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
                    <h4><i class="fas fa-exam"></i> Ujian {{ $exam->name }} </h4>
                </div>

                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Durasi Ujian : {{ $exam->time }} Menit</li>
                        <li class="list-group-item">Durasi Jumlah Soal : {{ $exam->total_question }} buah</li>
                        <li class="list-group-item">Ujian dibuka : {{ TanggalID($exam->start) }}</li>
                        <li class="list-group-item">Ujian ditutup : {{ TanggalID($exam->end) }}</li>
                    </ul>
                </div>
                <div class="card-footer">
                    @if (now() > $exam->start && now()  < $exam->end)
                        <a href="{{ route('exams.start', $exam->id) }}" class="btn btn-primary btn-lg btn-block" role="button" aria-pressed="true">START</a>
                    @elseif (now() < $exam->start)
                    <a onclick="goBack()" class="btn btn-warning btn-lg btn-block" role="button" aria-pressed="true">UJIAN BELUM DIBUKA - KEMBALI</a>
                    @elseif(now() > $exam->end)
                    <a onclick="goBack()" class="btn btn-danger btn-lg btn-block" role="button" aria-pressed="true">UJIAN SUDAH DITUTUP - KEMBALI</a>
                    @endif
                </div>
            </div>
        </div>
    </section>
</div>

<script type="text/javascript">
    function goBack() {
    window.history.back();
}
</script>

@stop