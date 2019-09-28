<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Locality extends Model
{
    protected $table = 'localities';

    public function city(){
        return $this->belongsTo(City::class);
    }
}
