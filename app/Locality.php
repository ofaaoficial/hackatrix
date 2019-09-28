<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Locality extends Model
{
    /**
     * @var bool
     */
    public $timestamps = false;
    /**
     * @var string
     */
    protected $table = 'localities';

    /**
     * @var array
     */
    protected $fillable = ['name'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function city(){
        return $this->belongsTo(City::class);
    }
}
