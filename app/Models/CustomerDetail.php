<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerDetail extends Model
{
    protected $table = 'customerdetail';
    use HasFactory;

     protected $fillable = [
        'customer_d_id',
        'dob',
        'profilepic',
        'profession',
        'disposableIncome',
        'gender',
        'kycStatus',
        'investorType',
        'idProof',
        'utility_bill',
        'regularInvestor',
        'address',
        'customerid',
        'kycVerificationCompleted',
    ];
    public $timestamps = false;
}
