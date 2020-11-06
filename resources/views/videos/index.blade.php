<h2>Videos Comment Details</h2>
@if ($message = Session::get('success'))
     <h3>{{ $message }}</h3>
@endif
<h2><a role="button" href="{{ route('videos.create') }}" title="Add New Video Comment">Add Video Comment</a></h2>
<table class="table table-bordered table-sm" border="2">
  <thead>
    <tr>
      <th>#</th>
      <th>Video Title</th>
      <th>Video Comment</th>
    </tr>
  </thead>
  <tbody>
  	@if(!$videos->isEmpty())
  	@php
    $no = 1;
    @endphp
    @foreach($videos as $video)
    <tr>
      <td>{{ $no++ }}</td>
      <td>{{ $video->name }}</td>
      <td>
        @if(!$video->comments->isEmpty())
          {{ $video->comments->implode('comment_body', ', ') }}
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

