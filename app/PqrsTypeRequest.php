<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PqrsTypeRequest extends Model
{
    /**
     * @var string
     */
    protected $table = 'pqrs_types_request';

    /**
     * @var bool
     */
    public $timestamps = false;

    /** 
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pqrs()
    {
        return $this->hasMany('App\Pqr');
    }
}
