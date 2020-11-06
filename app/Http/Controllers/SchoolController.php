<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Student;
use App\Email;

class SchoolController extends Controller
{
	public function index()
	{
    	$emails = Student::all()->toArray();

    	foreach ($emails as $key => $value) {
			$email = Student::find($value['id'])->email->toArray();
			print_r($email);
		}

	}

	// inverse
	public function inverse()
	{
		$students = Email::all()->toArray();
		foreach ($students as $key => $value) {
			$student = Email::find($value['id'])->student->toArray();
			print_r($student);
		}
	}
}
