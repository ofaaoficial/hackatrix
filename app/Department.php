<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @var string
     */
    protected $table = 'departments';

    protected $fillable = [
        'name',
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function cities()
    {
        return $this->hasMany('App\City');
    }
}
