@extends('layouts.app')

<!--Include path to Home-->

@include('include.header')

@section('content')

<div class="container">

    <div class="head-login">
        <h1>Login To Your Profile</h1>
    </div>
<div class="login">
    <form method="POST" action="{{ route('login') }}">
        @csrf

        <ul class="form">
            <li>
                <label for="email" >{{ __('E-Mail Address') }}</label>
                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Enter Your Email Address">

                @error('email')
                <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </li>


            <li>
                <label for="password" >{{ __('Password') }}</label>
                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Enter Your Password">

                @error('password')
                <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </li>
            <li>
                <label class="form-check-label" for="remember">
                    {{ __('Remember Me') }}
                </label>
                <input type="checkbox" name="remember" id="remember" checked>
            </li>
        </ul>
        <div class="follow">
            <button type="submit">
                {{ __('Log in') }}
            </button>
            Not registered? <a href="{{ url('/auth/register') }}">Register</a>

        </div>
    </form>
</div>
<div class="space"></div>

@endsection


