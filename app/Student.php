<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Email;

class Student extends Model
{
    public function email()
    {
    	return $this->hasMany(Email::class);
    }
}
