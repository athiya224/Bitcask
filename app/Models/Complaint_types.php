<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Complaint_types extends Model
{
    protected $table = 'complaint_types';
    use HasFactory;

    protected $fillable = [
        'id',
        'name',
        
    ];
    public $timestamps = false;
}
