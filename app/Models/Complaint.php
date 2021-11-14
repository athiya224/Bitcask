<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Complaint extends Model
{
    protected $table = 'complaints';
    use HasFactory;

    protected $fillable = [
        'id',
        'description',
        'user_id',
        'complaint_id',
        'date',
        
    ];
    // /zpublic $timestamps = false;
}
