<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
	protected $table = 'customer';
    use HasFactory;

     protected $fillable = [
        'customer_id',
        'F_Name',
        'L_Name',
        'Email_id',
        'Password',
        'Phone',
        'activeUser',
        'CreationTime',
        'ModifiedTime',
    ];
    public $timestamps = false;
}
