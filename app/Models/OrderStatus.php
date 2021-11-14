<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderStatus extends Model
{
    protected $table = 'orderstatus';
    use HasFactory;

     protected $fillable = [
        'Ods_id',
        'name',
        'creationTime',
        'modifiedTime',
        'CreationTime',
        'ModifiedTime',
    ];
    public $timestamps = false;
}
