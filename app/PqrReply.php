<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PqrReply extends Model
{
    /**
     * @var string
     */
    protected $table = 'pqrs_replies';

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
        'answer',	'date',	'files_id',	'pqr_id'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function pqr()
    {
        return $this->belongsTo('App\Pqr');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function files()
    {
        return $this->belongsTo('App\File');
    }
}
