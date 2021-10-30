<?php

namespace App\Entities;

use illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;
/**
 * Class User.
 *
 * @package namespace App\Entities;
 */
class UserSocial extends Model
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
     protected $fillable = ['user_id','social_network','social_id','social_email', 'social_avatar'];
     protected $hidden = [];

}
