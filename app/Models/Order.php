<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    use HasFactory;

     protected $fillable = [
        'Oder_id',
        'dateOfPurchase',
        'totalCost',
        'tax',
        'billingAddress',
        'paymentMode',
        'paymentInfo',
        'RE_Status',
        'creationTime',
        'modifiedTime',
        'Status',
        'Brand_id',
        'Product_Id',
        'transactionId',
        'invoice',
    ];
    public $timestamps = false;
}
