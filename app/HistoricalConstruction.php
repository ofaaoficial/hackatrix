<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HistoricalConstruction extends Model
{
    protected $table = 'historical_constructions';

    public function file(){
        return $this->belongsTo(File::class);
    }


    public function construction(){
        return $this->belongsTo(Contruction::class);
    }
}
