@extends ('backend.layouts.app')

@section ('title', trans('labels.backend.manishes.management') . ' | ' . trans('labels.backend.manishes.create'))

@section('page-header')
    <h1>
        {{ trans('labels.backend.manishes.management') }}
        <small>{{ trans('labels.backend.manishes.create') }}</small>
    </h1>
@endsection

@section('content')
    {{ Form::open(['route' => 'admin.manishes.store', 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'post', 'id' => 'create-manish']) }}

        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">{{ trans('labels.backend.manishes.create') }}</h3>

                <div class="box-tools pull-right">
                    @include('backend.manishes.partials.manishes-header-buttons')
                </div><!--box-tools pull-right-->
            </div><!--box-header with-border-->

            <div class="box-body">
                <div class="form-group">
                    {{-- Including Form blade file --}}
                    @include("backend.manishes.form")
                    <div class="edit-form-btn">
                        {{ link_to_route('admin.manishes.index', trans('buttons.general.cancel'), [], ['class' => 'btn btn-danger btn-md']) }}
                        {{ Form::submit(trans('buttons.general.crud.create'), ['class' => 'btn btn-primary btn-md']) }}
                        <div class="clearfix"></div>
                    </div><!--edit-form-btn-->
                </div><!-- form-group -->
            </div><!--box-body-->
        </div><!--box box-success-->
    {{ Form::close() }}
@endsection
