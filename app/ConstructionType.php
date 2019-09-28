<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ConstructionType extends Model
{
    protected $table = 'construction_type';

    public function constructions(){
        return $this->hasMany(Construction::class);
    }
}
