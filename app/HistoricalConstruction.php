<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HistoricalConstruction extends Model
{
    /**
     * @var bool
     */
    public $timestamps = false;
    /**
     * @var string
     */
    protected $table = 'historical_constructions';

    /**
     * @var array
     */
    protected $fillable = [
        'description',
        'construction_id',
        'file_id',
        'date'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function file(){
        return $this->belongsTo(File::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function construction(){
        return $this->belongsTo(Contruction::class);
    }
}
