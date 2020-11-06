<h2>Post Details</h2>
@if ($message = Session::get('success'))
     <h3>{{ $message }}</h3>
@endif
<h2><a role="button" href="{{ route('posts.create') }}" title="Add new post">Create Post</a></h2>
<table class="table table-bordered table-sm" border="2">
  <thead>
    <tr>
      <th>#</th>
      <th>Post Image</th>
      <th>Post Name</th>
    </tr>
  </thead>
  <tbody>
  	@if(!$posts->isEmpty())
  	@php
    $no = 1;
    @endphp
    @foreach($posts as $post)
    <tr>
      <td>{{ $no++ }}</td>
      <td><img src="{{ asset('storage/'.$post->image->url)}}" alt="Image" width="50" height="50" /></td>
      <td>{{ $post->name }}</td>
    </tr>
    @endforeach
    @else
    <tr>
      <td colspan="3">No post record found..</td>
    </tr>
    @endif
  </tbody>
</table>

