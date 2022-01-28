@extends ('backend.layouts.app')

@section ('title', trans('labels.backend.settings.management') . ' | ' . trans('labels.backend.settings.create'))


@section('content')
<div class=" p-3">
    <div class="col-md-12 bg-white py-3 px-2 shadow-lg bordertop-5 ">
     
    {{ Form::open(['route' => 'admin.settings.store', 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'post', 'id' => 'create-setting']) }}   
        {{ Form::token() }}
        
        @include("backend.settings.form")
        
        {{ link_to_route('admin.settings.index', trans('buttons.general.cancel'), [], ['class' => 'btn btn-danger btn-md']) }}
        
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