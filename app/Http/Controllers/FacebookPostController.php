<?php

namespace App\Http\Controllers;

use App\FacebookPost;
use Illuminate\Http\Request;

use App\Comment;

class FacebookPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $facebookposts = FacebookPost::all();
        return view('facebookposts.index', compact('facebookposts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $facebookposts = FacebookPost::all();
        return view('facebookposts.create', compact('facebookposts'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $post = FacebookPost::find($request->facebookPost);  
 
        $comment = new Comment;
        $comment->comment_body = $request->comment;
        $comment->commentable_id = $post->id;
        $comment->commentable_type = get_class($post);
         
        $post->comments()->save($comment);
        return redirect()->route('facebookposts.index')->with('success','Facebook Comment Inserted !!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\FacebookPost  $facebookPost
     * @return \Illuminate\Http\Response
     */
    public function show(FacebookPost $facebookPost)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\FacebookPost  $facebookPost
     * @return \Illuminate\Http\Response
     */
    public function edit(FacebookPost $facebookPost)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\FacebookPost  $facebookPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, FacebookPost $facebookPost)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\FacebookPost  $facebookPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(FacebookPost $facebookPost)
    {
        //
    }
}
