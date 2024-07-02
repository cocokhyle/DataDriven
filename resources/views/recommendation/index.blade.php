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
