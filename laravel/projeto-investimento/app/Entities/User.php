<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticable;
/**
 * Class User.
 *
 * @package namespace App\Entities;
 */
class User extends Authenticable
{
    use SoftDeletes;
    use Notifiable;

    /**
     * =============================================================================== *
     * The ORM database attributes
     * =============================================================================== *
     */

     public $timestamp  = true;
     protected $table = 'users';
     protected $fillable = ['cpf', 'name', 'phone', 'birth', 'gender', 'notes', 'email', 'password', 'status', 'permission'];
     protected $hidden = ['password', 'remember_token'];

    public function setPasswordAttribute($value){
        $this->attributes['password'] = env('PASSWORD_HASH') ? bcrypt($value) : $value;
    }
        
    
    
}
