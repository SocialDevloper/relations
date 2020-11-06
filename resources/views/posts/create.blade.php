<h2>Post Form</h2>
<form action="{{ route('posts.store') }}" method="post" enctype="multipart/form-data">
  @csrf
  <div class="form-group">
    <label for="InputRole">Name</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="Ener post name" required="required" value="{{old('name')}}"> 
  </div>
  <br>
  <div class="form-group">
    <label for="file">Post Image</label>
    <input type="file" class="form-control-file" id="photo" required="required" name="photo">
  </div>
  <br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>