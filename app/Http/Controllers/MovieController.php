<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Person;
use App\Ticket;

class MovieController extends Controller
{
	public function index(){

		$tickets = Person::all()->toArray();

		foreach ($tickets as $key => $value) {
			$ticket = Person::find($value['id'])->ticket->toArray();
			print_r($ticket);
		}
	}

	// inverse
	public function inverse()
	{
		$persons = Ticket::all()->toArray();
		foreach ($persons as $key => $value) {
			$person = Ticket::find($value['id'])->person->toArray();
			print_r($person);
		}
	}
}
