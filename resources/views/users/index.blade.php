<h2>User Details</h2>
@if ($message = Session::get('success'))
     <h3>{{ $message }}</h3>
@endif
<h2><a role="button" href="{{ route('facebookposts.create') }}" title="Add New User">Add User</a></h2>
<table class="table table-bordered table-sm" border="2">
  <thead>
    <tr>
      <th>#</th>
      <th>Avtar</th>
      <th>Name</th>
    </tr>
  </thead>
  <tbody>
  	@if(!$users->isEmpty())
  	@php
    $no = 1;
    @endphp
    @foreach($users as $user)
    <tr>
      <td>{{ $no++ }}</td>
      <td><img src="{{ asset('storage/'.$user->image->url)}}" alt="Image" width="50" height="50" /></td>
      <td>{{ $user->name }}</td>
    </tr>
    @endforeach
    @else
    <tr>
      <td colspan="3">No user record found..</td>
    </tr>
    @endif
  </tbody>
</table>

