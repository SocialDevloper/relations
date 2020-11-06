<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    public function courses()
    {
    	return $this->hasManyThrough(Course::class, Learner::class);
    }
}
