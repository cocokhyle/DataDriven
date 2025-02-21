@extends('layouts.auth_app')
@section('title')
    Register
@endsection
@section('content')

    <section class="section"
        style="background-image: url('{{ asset('../img/brgy_hall.jpg') }}'); background-size: cover;   background-repeat: no-repeat; height: 100vh; ">
        <div class="container">
            <div class="row">
                <div class="col-12 pt-5 ">
                    <h3 class="text-dark text-center p-4 rounded" style="background-color: #017cfd;">Data-Driven
                        Recommendation System</h3>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="login-brand">
                    </div>


                    <div class="card card-primary">
                        <div class="card-header">
                            <h4>Register</h4>
                        </div>
                        <div class="card-body pt-1">
                            <form method="POST" action="{{ route('register') }}" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="first_name">Full Name:</label><span class="text-danger">*</span>
                                            <input id="firstName" type="text"
                                                class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}"
                                                name="name" tabindex="1" placeholder="Enter Full Name"
                                                value="{{ old('name') }}" autofocus required>
                                            <div class="invalid-feedback">
                                                {{ $errors->first('name') }}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="email">Email:</label><span class="text-danger">*</span>
                                            <input id="email" type="email"
                                                class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"
                                                placeholder="Enter Email address" name="email" tabindex="1"
                                                value="{{ old('email') }}" required autofocus>
                                            <div class="invalid-feedback">
                                                {{ $errors->first('email') }}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="password" class="control-label">Password
                                                :</label><span class="text-danger">*</span>
                                            <input id="password" type="password"
                                                class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}"
                                                placeholder="Set account password" name="password" tabindex="2" required>
                                            <div class="invalid-feedback">
                                                {{ $errors->first('password') }}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="password_confirmation" class="control-label">Confirm
                                                Password:</label><span class="text-danger">*</span>
                                            <input id="password_confirmation" type="password"
                                                placeholder="Confirm account password"
                                                class="form-control{{ $errors->has('password_confirmation') ? ' is-invalid' : '' }}"
                                                name="password_confirmation" tabindex="2">
                                            <div class="invalid-feedback">
                                                {{ $errors->first('password_confirmation') }}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 mt-4">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                                                Register
                                            </button>
                                        </div>
                                        <div class=" text-center">
                                            Goto <a href="{{ route('dashboard.index') }}">Dashboard</a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                       
                    </div>


                </div>
            </div>
        </div>
    </section>
@endsection
