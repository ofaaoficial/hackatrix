<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @var string
     */
    protected $table = 'users';

    /** 
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'last_name', 'entity_id', 'rol_id', 'document', 'token'
    ];

    protected $hidden = ['password'];

    public function rol()
    {
        return $this->belongsTo('App\Rol');
    }

    public function entity()
    {
        return $this->belongsTo('App\Entity');
    }
    
}
