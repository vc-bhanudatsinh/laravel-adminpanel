<div class="card-footer">
    <div class="row ">
        <div class="col-12 text-center">
            {{ link_to_route($cancelRoute, trans('buttons.general.cancel'), [], ['class' => 'btn btn-light border border-danger btn-sm over-danger']) }}

            {{ Form::submit((isset($id)) ? trans('buttons.general.crud.update') : trans('buttons.general.crud.create'), ['class' => 'btn border-primary over-success btn-light border btn-sm']) }}
        </div>
    </div>
</div>
