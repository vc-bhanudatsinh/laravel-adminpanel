<table class="table table-striped table-hover">
    <tr>
        <th>{{ trans('backend.user.name') }}</th>
        <td>{!! $user->name !!}</td>
    </tr>
    
    <tr>
        <th>{{ trans('backend.user.email') }}</th>
        <td>{!! $user->email !!}</td>
    </tr>

    <tr>
        <th>{{ trans('backend.user.image') }}</th>
        <td><img src="{{ asset($user->profile_photo_path) }}" width="80px" height="80px" /></td>
    </tr>
    
    <tr>
        <th>{{ trans('backend.user.status') }}</th>
        <td>{!! $user->status !!}</td>
    </tr>
</table>