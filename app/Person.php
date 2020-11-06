<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Ticket;

class Person extends Model
{
    public function ticket()
    {
    	return $this->hasOne(Ticket::class);
    }
}
