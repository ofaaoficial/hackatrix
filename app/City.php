<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{

    /**
     * @var string
     */
    protected $table = 'cities';

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function department()
    {
        return $this->belongsTo('App\Department');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function constructions()
    {
        return $this->hasMany('App\Construction');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function country()
    {
        return $this->belongsTo('App\Country');
    }
}
