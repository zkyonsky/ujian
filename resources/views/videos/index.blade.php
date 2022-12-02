@extends('layouts.app')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Video</h1>
        </div>

        <div class="section-body">

            @can('videos.create')
                <div class="card">
                    <div class="card-header">
                        <h4><i class="fas fa-file-video"></i> Upload Video</h4>
                    </div>

                    <div class="card-body">

                        <form action="{{ route('videos.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group">
                                <label>TITLE</label>
                                <input type="text" name="title" value="{{ old('title') }}" placeholder="Masukkan Judul Video" class="form-control @error('title') is-invalid @enderror">

                                @error('title')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>VIDEO</label>
                                <input type="file" name="video" class="form-control @error('video') is-invalid @enderror">

                                @error('video')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>CAPTION</label>
                                <input type="text" name="caption" value="{{ old('caption') }}" placeholder="Masukkan Caption Video" class="form-control @error('caption') is-invalid @enderror">

                                @error('caption')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <button class="btn btn-primary mr-1 btn-submit" type="submit"><i class="fa fa-upload"></i> UPLOAD</button>
                            <button class="btn btn-warning btn-reset" type="reset"><i class="fa fa-redo"></i> RESET</button>


                        </form>

                    </div>
                </div>
            @endcan

            <div class="card">
                <div class="card-header">
                    <h4><i class="fas fa-video"></i> Video</h4>
                </div>

                <div class="card-body">
                    
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th scope="col" style="text-align: center;width: 6%">NO.</th>
                                <th scope="col">VIDEO</th>
                                <th scope="col">TITLE</th>
                                <th scope="col">CAPTION</th>
                                <th scope="col" style="width: 15%;text-align: center">AKSI</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($videos as $no => $video)
                                <tr>
                                    <th scope="row" style="text-align: center">{{ ++$no + ($videos->currentPage()-1) * $videos->perPage() }}</th>
                                    <td>
                                        <video width="160" height="120" controls>
                                            <source src="{{ Storage::url('public/videos/'.$video->link) }}" type="video/mp4">
                                            <source src="{{ Storage::url('public/videos/'.$video->link) }}" type="video/mpeg">
                                        </video>
                                    </td>
                                    <td>{{ $video->title }}</td>
                                    <td>{{ $video->caption }}</td>
                                    <td class="text-center">
                                        @can('videos.delete')
                                            <button onClick="Delete(this.id)" class="btn btn-sm btn-danger" id="{{ $video->id }}">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        @endcan
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div style="text-align: center">
                            {{$videos->links("vendor.pagination.bootstrap-4")}}
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>

<script>
    //ajax delete
    function Delete(id)
        {
            var id = id;
            var token = $("meta[name='csrf-token']").attr("content");

            swal({
                title: "APAKAH KAMU YAKIN ?",
                text: "INGIN MENGHAPUS DATA INI!",
                icon: "warning",
                buttons: [
                    'TIDAK',
                    'YA'
                ],
                dangerMode: true,
            }).then(function(isConfirm) {
                if (isConfirm) {


                    //ajax delete
                    jQuery.ajax({
                        url: "{{ route("videos.index") }}/"+id,
                        data:     {
                            "id": id,
                            "_token": token
                        },
                        type: 'DELETE',
                        success: function (response) {
                            if (response.status == "success") {
                                swal({
                                    title: 'BERHASIL!',
                                    text: 'DATA BERHASIL DIHAPUS!',
                                    icon: 'success',
                                    timer: 1000,
                                    showConfirmButton: false,
                                    showCancelButton: false,
                                    buttons: false,
                                }).then(function() {
                                    location.reload();
                                });
                            }else{
                                swal({
                                    title: 'GAGAL!',
                                    text: 'DATA GAGAL DIHAPUS!',
                                    icon: 'error',
                                    timer: 1000,
                                    showConfirmButton: false,
                                    showCancelButton: false,
                                    buttons: false,
                                }).then(function() {
                                    location.reload();
                                });
                            }
                        }
                    });

                } else {
                    return true;
                }
            })
        }
</script>
@stop