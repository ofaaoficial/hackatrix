<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    /**
     * @var string
     */
    protected $table = 'files';

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'type',
        'ubication',
    ];

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
