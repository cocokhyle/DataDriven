@extends('layouts.app')
@section('title')
    Brgy Clearance Issuance
@endsection
@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Brgy Clearance Issuance</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <h2 class="section-title">Mr/Ms {{ $resident->first_name }} {{ $resident->middle_name }}
                        {{ $resident->last_name }} </h2>
                    <p class="section-lead">
                        Requesting for Brgy Clearance Certificate
                    </p>


                    @foreach ($resident->blotters as $blotter)
                        @if ($blotter->status == 'Unsettled')
                            <div class="row d-flex justify-content-center">
                                <div class="col-8 ">
                                    <div class="alert alert-danger">
                                        <h5 class="text-center text-dark">This Person has a Blotter Record !</h5>
                                    </div>
                                </div>
                            </div>
                        @endif
                    @endforeach


                    <div class="row">
                        <div class="col-12 col-md-12 col-lg-6">
                            <div class="card profile-widget" id="border-blue">
                                <div class="profile-widget-header d-flex justify-content-center px-5 pt-5">

                                    <img alt="image" src="{{ url('storage/residence/' . $resident->image) }}"
                                        class="rounded-circle" height="300px" width="300px">

                                </div>
                                <div class="profile-widget-description">
                                    <div class="profile-widget-name text-center mb-4">
                                        <h5>
                                            <strong>{{ $resident->last_name }} {{ $resident->first_name }}
                                                {{ $resident->middle_name }} {{ $resident->suffix_name }} <div
                                                    class="text-muted d-inline font-weight-normal">
                                                    <div class="slash"></div>{{ $resident->occupation }}
                                                </div>
                                            </strong>
                                        </h5>
                                    </div>
                                    <div class="row m-3">
                                        <div class="col-md-6">

                                            <p>
                                                <strong>Fullname: </strong> {{ $resident->last_name }},
                                                {{ $resident->first_name }}
                                                {{ $resident->middle_name }} {{ $resident->suffix_name }}
                                            </p>

                                            <p>
                                                <strong>Birthday:
                                                </strong>{{ date('M d, Y', strtotime($resident->birthday)) }}
                                            </p>
                                            <p>
                                                <strong>Sex: </strong>{{ $resident->gender }}
                                            </p>
                                            <p>
                                                <strong>Occupation: </strong>{{ $resident->occupation }}

                                            </p>


                                            <p>
                                                <strong>Address: </strong>{{ $resident->house_number }}
                                                {{ $resident->street }}, Purok{{ $resident->purok }}, Sto.Tomas
                                            </p>

                                            <p>

                                                <strong>PWD: </strong>{{ $resident->pwd }}
                                            </p>




                                        </div>
                                        <div class="col-md-6">
                                            <p>
                                                <strong>Age: </strong>
                                                {{ \Carbon\Carbon::parse($resident->birthday)->diff(\Carbon\Carbon::now())->format('%y') }}
                                            </p>
                                            <p>
                                                <strong>Birthplace: </strong>{{ $resident->birthplace }}
                                            </p>

                                            <p>
                                                <strong>Status: </strong>{{ $resident->civil_status }}

                                            </p>


                                            <p>
                                                <strong>Student: </strong>{{ $resident->student }}

                                            </p>
                                            <p>

                                                <strong>Type of house: </strong>{{ $resident->type_of_house }}
                                            </p>

                                            <p>

                                                <strong>Membership Program: </strong>{{ $resident->membership_prog }}
                                            </p>


                                        </div>
                                    </div>
                                    

                                    @foreach ($resident_with_blotter->blotters as $blotter)
                                        @if ($blotter->status == 'Unsettled')
                                            <div class="row">
                                                <div class="col-sm-12 col-lg-12 mt-5">
                                                    <h5 class="text-center text-danger">Blotters Information</h5>
                                                    <p class="ml-5">
                                                        <strong>Complained By:
                                                        </strong>{{ $blotter->complainant_name }}<br>
                                                        <strong>Blotter Complain:
                                                        </strong>{{ $blotter->Blotters_info }}<br>
                                                        <strong>Incident:
                                                        </strong>{{ \Carbon\Carbon::parse($blotter->date_of_incident)->format('F d, Y') }}
                                                    <p>
                                                </div>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-md-12 col-lg-6">
                            <div class="card" id="border-blue" style="margin-top: 35px;">
                                <div class="card-header">
                                    <h4> Requesting for </h4>
                                </div>
                                <form action="{{ route('brgy_clearance.show', $resident->id) }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Purpose</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="fas fa-user"></i>
                                                            </div>
                                                        </div>
                                                        <input type="text" name="purpose" class="form-control phone-number"
                                                            required>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex justify-content-center">

                                            <button type="submit" class="btn btn-lg btn-icon icon-left btn-success"><i
                                                class="far fa-edit"></i> Generate Brgy Clearance </a>

                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        </div>
    </section>
@endsection