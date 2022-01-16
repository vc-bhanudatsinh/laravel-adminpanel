@extends ('backend.layouts.app')

@section ('title')
 Menu Management
@endsection

@section('page-header')
<div class="w-100 d-flex justify-content-between align-items-center pt-3 px-3" style="border-bottom:2px solid #ccc;">
     <p><b class="lbindectionName text-dark">Menu Management</b> / Edit Menu</p>
    <p></p>
 </div>
@endsection

@section('content')
    {{ Form::model($menu, ['route' => ['admin.menu.update', $menu], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH', 'id' => 'edit-role', 'files' => true]) }}

        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">{{ trans('labels.backend.menu.edit') }}</h3>

                <div class="box-tools pull-right">
                    @include('backend.menu.partials.header-buttons')
                </div><!--box-tools pull-right-->
            </div><!-- /.box-header -->

            {{-- Including Form blade file --}}
            <div class="box-body">
                <div class="form-group">
                    @include("backend.menu.form")
                    <div class="edit-form-btn">
                    {{ link_to_route('admin.menu.index', trans('buttons.general.cancel'), [], ['class' => 'btn btn-danger btn-md']) }}
                    {{ Form::submit(trans('buttons.general.crud.update'), ['class' => 'btn btn-primary btn-md']) }}
                    <div class="clearfix"></div>
                </div>
            </div>
        </div><!--box-->
    </div>
    {{ Form::close() }}
    @include("backend.menu.partials.modal")
@endsection