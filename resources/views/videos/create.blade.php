<h2>Video Comment</h2>
<form action="{{ route('videos.store') }}" method="post" enctype="multipart/form-data">
  @csrf
  <div class="form-group">
    <label for="InputRole">Select Video</label>
    <select name="videoPost" required="required">
      <option value="">Select video</option>
       @foreach ($videos as $video)
         <option value="{{ $video->id }}">{{ $video->name }}</option>
       @endforeach
    </select>
  </div>
  <br>
  <div class="form-group">
    <label for="file">Comment</label>
    <textarea name="comment" cols="20" rows="5" required="required"></textarea>
  </div>
  <br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>