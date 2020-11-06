<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Person;

class Ticket extends Model
{
    public function person()
    {
    	return $this->belongsTo(Person::class);
    }
}
