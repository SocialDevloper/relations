<h2>Facebook Post Details</h2>
@if ($message = Session::get('success'))
     <h3>{{ $message }}</h3>
@endif
<h2><a role="button" href="{{ route('facebookposts.create') }}" title="Add Facebook Post Comment">Add Post Comment</a></h2>
<table class="table table-bordered table-sm" border="2">
  <thead>
    <tr>
      <th>#</th>
      <th>Facebook Post</th>
      <th>Post Comment</th>
    </tr>
  </thead>
  <tbody>
  	@if(!$facebookposts->isEmpty())
  	@php
    $no = 1;
    @endphp
    @foreach($facebookposts as $post)
    <tr>
      <td>{{ $no++ }}</td>
      <td>{{ $post->name }}</td>
      <td>
        @if(!$post->comments->isEmpty())
          {{ $post->comments->implode('comment_body', ', ') }}
        @else
          -
        @endif
      </td>
    </tr>
    @endforeach
    @else
    <tr>
      <td colspan="3">No post record found..</td>
    </tr>
    @endif
  </tbody>
</table>

