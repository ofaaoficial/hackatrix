<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Participation extends Model
{
    /**
     * @var bool
     */
    public $timestamps = false;
    /**
     * @var string
     */
    protected $table = 'participations';

    /**
     * @var array
     */
    protected $fillable = ['value', 'user_id', 'construction_id'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user(){
        return $this->belongsTo(User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function construction(){
        return $this->belongsTo(Construction::class);
    }
}
