<h2>Facebook Post Comment</h2>
<form action="{{ route('facebookposts.store') }}" method="post" enctype="multipart/form-data">
  @csrf
  <div class="form-group">
    <label for="InputRole">Select Facebook Post</label>
    <select name="facebookPost" required="required">
      <option value="">Select facebook post</option>
       @foreach ($facebookposts as $post)
         <option value="{{ $post->id }}">{{ $post->name }}</option>
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