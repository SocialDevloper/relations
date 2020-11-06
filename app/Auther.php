<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Auther extends Model
{
    public function books()
    {
    	return $this->belongsToMany(Book::class)->withTimestamps();

    	// withPivot('columnname1', 'columnname2')
    }
}
