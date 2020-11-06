<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Book;
use App\Auther;

class LibararyController extends Controller
{
    public function index()
    {
    	$authers = Auther::all()->toArray();

    	foreach ($authers as $key => $auther) {
    		$book = Auther::find($auther['id'])->books->toArray();
    		print_r($book);
    	}
    }

    // inverse
	public function inverse()
	{
		$allbook = Book::all()->toArray();

		foreach ($allbook as $key => $value) {
			$book_of_auther = Book::find($value['id'])->authers->toArray();
			print_r($book_of_auther);
		}
	}
}
