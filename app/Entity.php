<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Entity extends Model
{
    /**
     * @var bool
     */
    public $timestamps = false;
    
    /**
     * @var string
     */
    protected $table = 'entities';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'phone_contact',
        'email',
        'country_id'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function country()
    {
        return $this->belongsTo('App\Country');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pqrs()
    {
        return $this->hasMany('App\Pqr');
    }


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function constructions()
    {
        return $this->hasMany('App\Construction');
    }
}
