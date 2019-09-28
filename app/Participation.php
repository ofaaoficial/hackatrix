<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Participation extends Model
{
    protected $table = 'participations';

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function construction(){
        return $this->belongsTo(Construction::class);
    }
}
