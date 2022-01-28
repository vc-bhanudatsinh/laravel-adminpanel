<div class="box-body">

    <div class="row my-3">
       {{ Form::label('name', trans('validation.attributes.backend.permissions.name'), ['class' => 'col-lg-2 control-label required']) }}
        <div class="col-lg-8">
            {{ Form::text('name', null, ['class' => 'form-control box-size', 'placeholder' => trans('validation.attributes.backend.permissions.name'), 'required' => 'required']) }}
        </div>
        <div class="col-lg-2"></div>
    </div>

    <div class="row my-3">
        {{ Form::label('display_name', trans('validation.attributes.backend.permissions.display_name'), ['class' => 'col-lg-2 control-label required']) }}
         <div class="col-lg-8">
            {{ Form::text('display_name', null,['class' => 'form-control box-size', 'placeholder' => trans('validation.attributes.backend.permissions.display_name'), 'required' => 'required']) }}
        </div>
        <div class="col-lg-2"></div>
    </div>

     <div class="row my-3">
       {{ Form::label('sort', trans('validation.attributes.backend.permissions.sort'), ['class' => 'col-lg-2 control-label']) }}
        <div class="col-lg-8">
            {{ Form::text('sort', null, ['class' => 'form-control box-size', 'placeholder' => trans('validation.attributes.backend.permissions.sort')]) }}
        </div>
        <div class="col-lg-2"></div>
    </div>
    
</div>


