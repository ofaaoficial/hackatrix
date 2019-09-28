<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ConstructionType extends Model
{
    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @var array
     */
    protected $fillable = [
        'name'
    ];
    /**
     * @var string
     */
    protected $table = 'construction_type';

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function constructions(){
        return $this->hasMany(Construction::class);
    }
}
