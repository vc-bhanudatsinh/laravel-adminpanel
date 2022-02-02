@extends('auth.layouts.app')

@section('title') Login @endsection

@push('head-styles')
<link rel="stylesheet" href="{{ asset('auth/style.css') }}">
@endpush

@push('head-scripts')
{{-- link script page or cdn --}}
@endpush

@section('content')
<div class="admin-auth d-flex justify-content-center align-items-center" >
    <div class="page py-4">
        <div class="branding">
            <div class="d-flex justify-content-center mb-1">
                <div class="preloader">
                    <div class="spinner"></div>
                    <div class="spinner-2"></div>
                </div>
            </div>
            {{-- <h1 class="text-white text-center">LBM</h1> --}}
            <p class="text-white text-center"> &nbsp; LARAVEL PROJECT STARTUP</p>
        </div>
        <div class="px-4">
            {{-- start send link reset password --}}
            {{-- <x-jet-authentication-card>
                <x-slot name="logo">
                    <x-jet-authentication-card-logo />
                </x-slot> --}}

                <div class="mb-4 text-sm text-white">
                    {{ __('Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.') }}
                </div>

                @if (session('status'))
                    <div class="mb-4 font-medium text-sm text-green-600">
                        {{ session('status') }}
                    </div>
                @endif

                <x-jet-validation-errors class="mb-4" />

                <form method="POST" action="{{ route('password.email') }}">
                    @csrf

                    <div class="block">
                        <x-jet-label for="email" value="{{ __('Email') }}" class="text-white" />
                        <x-jet-input id="email" class="block mt-1 w-full form-control" type="email" name="email" :value="old('email')" required autofocus />
                    </div>

                    <div class="flex items-center justify-end mt-4 ">
                        {{-- <x-jet-button>
                            {{ __('Email Password Reset Link') }}
                        </x-jet-button> --}}
                        <button class="btn btn-danger rounded-0 float-right" type="submit">
                            {{ __('Email Password Reset Link') }}
                            <i class="fa fa-sign-in"></i>
                        </button>
                    </div>
                </form>
            {{-- </x-jet-authentication-card> --}}
            {{-- end send link reset password --}}
        </div>
    </div>
</div>
@endsection

@section('bottom-scripts')
    {{-- link script page or code here --}}
@endsection
