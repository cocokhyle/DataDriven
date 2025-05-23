@extends('layouts.app')
@section('title')
    Recommendation
@endsection
@section('data_tables_css')
<link href="{{ asset('vendor/css/datatables/datatable.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('content')
<section class="section">
<div class="section-header d-flex justify-content-between">
            <div class="">
                <h3 class="page__heading">Recommendation</h3>
            </div>

        </div>
        <div class="section-body">

        <div class="row">
        @if(isset($programDetails) && !empty($programDetails))
        @foreach ($programDetails as $program)
            @php
                $priorityImages = [
                    'Senior Citizens' => 'img/senior.png',
                    'PWD' => 'img/pwd.png',
                    'Students' => 'img/student.png',
                    'Women' => 'img/women.png',
                    'General Residents Especially Senior Citizens' => 'img/senior.png',
                    'Youth' => 'img/youth.png',
                    'Unemployed Residents' => 'img/unemployed.png',
                    'Renting House' => 'img/renting.png',
                    'Low-income Families' => 'img/4ps-benefeciaries.png',
                    'General Residents' => 'img/general.png',
                ];
                $imagePath = isset($priorityImages[$program->priority]) ? asset($priorityImages[$program->priority]) : asset('img/default.png');
            @endphp
            <div class="card-deck col-md-4 mb-4">
                <div class="card text-start" style="width: 100%;">
                    <div class="card-body" id="border-blue" style="border-radius: 5px;">
                        <h5 class="card-title" >{{ $program->programName }}</h5>
                        <p class="card-text font-italic font-weight-normal" style="font-size: 12px;">{{ $program->priority }}</p>
                        <div class="d-flex justify-content-center">
                            <img src="{{ $imagePath }}" alt="" style="width: 200px;" class="p-3">
                        </div>
                        <div class="row align-items-center ml-2">
                        <img src="{{asset('../img/group.png')}}" alt="" style="width: 25px;" class="mr-2">
                        <p class="card-text font-weight-normal blockquote-footer" style=" color: black;"> {{$program->usage_count}} resident(s)</p>
                        </div>


                        <p class="card-text">{{ $program->programDescription }}</p>




                    </div>
                </div>
            </div>
        @endforeach
    @else
        <h5>No recommended program(s) yet, insert residents first!</h5>
    @endif
                </div>
        </div>
</section>
@endsection
@section('data_tables_script')
<script>
    $(document).ready(function() {
        $('#table').DataTable();
    });
</script>

<script type="text/javascript" charset="utf8" src="{{ asset('vendor/js/datatables/datatable.js') }}"></script>
@endsection
