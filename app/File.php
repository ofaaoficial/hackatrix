<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    public $timestamps = false;


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
    public function pqrsReplies()
    {
        return $this->hasMany('App\PqrReply');
    }
}
