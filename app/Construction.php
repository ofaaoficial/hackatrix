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
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
            "name",
            "start_date",
            "estimated_date_completion",
            "objetive",
            "general_observations",
            "coordinates",
            "entity_id",
            "city_id",
            "construction_type_id",
            "money_invested",
            'locality_id'
    ];

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
