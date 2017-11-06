<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BloodGroup extends Model
{
    protected $table = 'blood_groups';
    protected $primaryKey = 'id';
    protected $fillable = ['id','bloodGroup'];
}
