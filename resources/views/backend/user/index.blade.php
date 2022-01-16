@extends ('backend.layouts.app')

@section ('title')
User Management
@endsection

@section('page-header')
<div class="w-100 d-flex justify-content-between align-items-center pt-3 px-3" style="border-bottom:2px solid #ccc;">
    <p><b class="lbindectionName text-dark">User Management</b> / Active User</p>
    <p></p>
 </div>
@endsection

@section('content')
<div class="p-3">
    <div class="col-md-12 bg-white py-3 px-2 shadow-lg bordertop-5 ">
        <div class="row text-dark">
            <div class="col-md-6"><b>Active User</b></div>
            <div class="col-md-6"> @include('backend.user.partials.actions') @include('backend.user.partials.export')</div>
        </div>
         
        <div class="table-parent py-4">
           <table id="user_table" class="table table-striped table-bordered nowrap text-center">
                <thead>
                <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Image</th>
                <th>Email</th>
                <th>Action</th>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection

@section('bottom-scripts')

<script type="text/javascript">
   $(document).ready(function() {
        $.ajaxSetup({
            headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
         $('#user_table').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{route('admin.user.get')}}",
                    type: 'post'
                },
                columns: [
                    {data: 'id', name: '{{config('module.user.table')}}.id'},
                    {data: 'name', name: '{{config('module.user.table')}}.name'},
                    {data: 'image', name: 'image', searchable: false, sortable: false},
                    {data: 'email', name: '{{config('module.user.table')}}.email'},
                    {data: 'actions', name: 'actions', searchable: false, sortable: false}
                ],
                order: [[0, "asc"]],
                searchDelay: 500
         });
 

});

  
</script>
@endsection