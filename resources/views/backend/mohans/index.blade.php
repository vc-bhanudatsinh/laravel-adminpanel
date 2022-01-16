@extends ('backend.layouts.app')

@section ('title', trans('labels.backend.mohans.management'))

@section('page-header')

@endsection

@section('content')
  <div class="p-3">
    <div class="col-md-12 bg-white py-3 px-2 shadow-lg bordertop-5 ">
        <div class="row text-dark">
            <div class="col-md-6"><b>{{ trans('labels.backend.mohans.management') }}</b></div>
            <div class="col-md-6">
                @include('backend.mohans.partials.mohans-header-buttons')
            </div>
        </div>
         
        <div class="table-parent py-4">
            <div class="table-responsive data-table-wrapper">
                <table id="mohans-table" class="table table-condensed table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>{{ trans('labels.backend.mohans.table.id') }}</th>
                            <th>{{ trans('labels.backend.mohans.table.createdat') }}</th>
                            <th>{{ trans('labels.general.actions') }}</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div><!--table-responsive-->
        </div><!-- /.box-body -->
    </div><!--box-->
  </div><!--content-->
@endsection

@section('bottom-scripts')
<script type="text/javascript">
   $(document).ready(function() {
        $.ajaxSetup({
            headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
           $('#mohans-table').dataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: '{{ route("admin.mohans.get") }}',
                    type: 'post'
                },
                columns: [
                    {data: 'id', name: '{{config('module.mohans.table')}}.id'},
                    {data: 'created_at', name: '{{config('module.mohans.table')}}.created_at'},
                    {data: 'actions', name: 'actions', searchable: false, sortable: false}
                ],
                order: [[0, "asc"]],
                searchDelay: 500,
                dom: 'lBfrtip',
            });
    });
</script>
@endsection
