@extends ('backend.layouts.app')

@section ('title', trans('labels.backend.lbs.management') . ' | ' . trans('labels.backend.lbs.edit'))

@section('page-header')
    <h1>
        {{ trans('labels.backend.lbs.management') }}
        <small>{{ trans('labels.backend.lbs.edit') }}</small>
    </h1>
@endsection

@section('content')
    {{ Form::model($lb, ['route' => ['admin.lbs.update', $lb], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-lb']) }}

        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">{{ trans('labels.backend.lbs.edit') }}</h3>

                <div class="box-tools pull-right">
                    @include('backend.lbs.partials.lbs-header-buttons')
                </div><!--box-tools pull-right-->
            </div><!--box-header with-border-->

            <div class="box-body">
                <div class="form-group">
                    {{-- Including Form blade file --}}
                    @include("backend.lbs.form")
                    <div class="edit-form-btn">
                        {{ link_to_route('admin.lbs.index', trans('buttons.general.cancel'), [], ['class' => 'btn btn-danger btn-md']) }}
                        {{ Form::submit(trans('buttons.general.crud.update'), ['class' => 'btn btn-primary btn-md']) }}
                        <div class="clearfix"></div>
                    </div><!--edit-form-btn-->
                </div><!--form-group-->
            </div><!--box-body-->
        </div><!--box box-success -->
    {{ Form::close() }}
@endsection
