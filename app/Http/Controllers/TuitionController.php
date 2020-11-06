<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Country;

class TuitionController extends Controller
{
    public function index()
    {
    	$country = Country::all()->toArray();

    	// get India (1) get all courses
    	$courses = Country::find(1)->courses->toArray();
    	print_r($courses);
    
    }
}
