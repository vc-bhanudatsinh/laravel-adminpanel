@extends ('backend.layouts.app')

@section ('title', trans('labels.backend.daminis.management') . ' | ' . trans('labels.backend.daminis.create'))

@section('page-header')

@endsection

@section('content')
<div class=" p-3">
    <div class="col-md-12 bg-white py-3 px-2 shadow-lg bordertop-5 ">
     
    {{ Form::open(['route' => 'admin.daminis.store', 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'post', 'id' => 'create-damini']) }}   
        {{ Form::token() }}
        
        @include("backend.daminis.form")
        
        {{ link_to_route('admin.daminis.index', trans('buttons.general.cancel'), [], ['class' => 'btn btn-danger btn-md']) }}
        
        {{ Form::submit(trans('buttons.general.crud.create'), ['class' => 'btn btn-primary btn-md']) }}
       
    {{ Form::close() }}
    
    </div>
</div>
@endsection

@section('bottom-scripts')
    <script type="text/javascript">
        //Put your javascript needs in here.
        $( document ).ready( function() {
            //Everything in here would execute after the DOM is ready to manipulated.
        });
    </script>
@endsection