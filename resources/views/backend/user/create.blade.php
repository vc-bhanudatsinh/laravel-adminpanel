@extends ('backend.layouts.app')

@section ('title')
User Management
@endsection

@section('page-header')
<div class="w-100 d-flex justify-content-between align-items-center pt-3 px-3" style="border-bottom:2px solid #ccc;">
    <p><b class="lbindectionName text-dark">User Management</b> /Create User</p>
    <p></p>
 </div>
@endsection

@section('content')
<div class=" p-3">
    <div class="col-md-12 bg-white py-3 px-2 shadow-lg bordertop-5 ">
     
            {{ Form::open(['route' => 'admin.user.store', 'class' => 'form-horizontal pt-3', 'role' => 'form', 'method' => 'post', 'id' => 'create-user','files' => true]) }}
            {{ Form::token() }}
        @include('backend.user.form')
         @include('backend.components.footer_buttons', [ 'cancelRoute' => 'admin.user.index' ])
        {{ Form::close() }}
    </div>
</div>
@endsection

@section('bottom-scripts')

@endsection