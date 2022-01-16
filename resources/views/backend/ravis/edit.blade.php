@extends ('backend.layouts.app')

@section ('title', trans('labels.backend.ravis.management') . ' | ' . trans('labels.backend.ravis.edit'))

@section('page-header')

@endsection

@section('content')
<div class=" p-3">
    <div class="col-md-12 bg-white py-3 px-2 shadow-lg bordertop-5 ">
    {{ Form::model($ravi, ['route' => ['admin.ravis.update', $ravi], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-ravi']) }}

                @include("backend.ravis.form")

                {{ link_to_route('admin.ravis.index', trans('buttons.general.cancel'), [], ['class' => 'btn btn-danger btn-md']) }}
                
                {{ Form::submit(trans('buttons.general.crud.update'), ['class' => 'btn btn-primary btn-md']) }}
       
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
