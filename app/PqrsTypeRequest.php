<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PqrsTypeRequest extends Model
{
    protected $table = 'pqrs_types_request';
    public $timestamps = false;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pqrs()
    {
        return $this->hasMany('App\Pqr');
    }
}
