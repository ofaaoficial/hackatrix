<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pqr extends Model
{
    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @var string
     */
    protected $table = 'pqrs';

    /** 
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'description', 'entity_id', 'pqrs_type_request_id', 'files_id'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function entity()
    {
        return $this->belongsTo('App\Entity');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function pqrsTypeRequest()
    {
        return $this->belongsTo('App\PqrsTypeRequest');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function files()
    {
        return $this->belongsTo('App\File');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pqrReplies()
    {
        return $this->hasMany('App\pqrReply');
    }

}
