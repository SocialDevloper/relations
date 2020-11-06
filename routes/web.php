<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('moview', 'MovieController@index');
Route::get('inverse', 'MovieController@inverse');

Route::get('email', 'SchoolController@index');
Route::get('inverseemail', 'SchoolController@inverse');

Route::get('book', 'LibararyController@index');
Route::get('inversebook', 'LibararyController@inverse');

Route::get('course', 'TuitionController@index');

/* One To One Polymorphic */
Route::resource('users', 'UserController');
Route::resource('posts', 'PostController');

/* One To Many Polymorphic */
Route::resource('facebookposts', 'FacebookPostController');
Route::resource('videos', 'VideoController');


/* Ajax CRUD With File */
Route::resource('ajax-crud', 'AjaxCrudController');

Route::post('ajax-crud/update', 'AjaxCrudController@update')->name('ajax-crud.update');

Route::get('ajax-crud/destroy/{id}', 'AjaxCrudController@destroy');