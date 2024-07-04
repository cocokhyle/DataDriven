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
            <div class="col col-lg-4 col-md-6 col-sm-12 d-flex justify-content-around">
                    <div class="card text-start" style="width: 30rem; heigth: 50rem;">
                        <div class="card-body" id = "border-blue" style="border-radius: 5px;">
                          <h5 class="">Senior Wellness Program</h5>
                          <p class="mt-0">Senior</p>
                          <div class="d-flex justify-content-center">
                          <img src="{{ '../img/senior.png' }}" alt="" style = "width: 200px;" class = "p-3">
                          <p class="mt-0">This will help the senior to actively healthy</p>
                          </div>
                        </div>
                      </div>
                </div>
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
