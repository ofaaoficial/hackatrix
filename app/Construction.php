<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Construction extends Model
{
    /**
     * @var string
     */
    protected $table = 'constructions';

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function city()
    {
        return $this->belongsTo('App\City');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function entity()
    {
        return $this->belongsTo('App\Entity');
    }
}
