<?php

namespace App\Http\Controllers;
use App\Models\Customer;
use App\Models\Order;
use App\Models\CustomerDetail;
use Session;
use Illuminate\Http\Request;

class Admin extends Controller
{
	public function index()
    {
        return view('admin.index');
    }
    public function customers($value='')
    {
    	$customers = Customer::all();
    	return view('admin.customers')->with('customers',$customers);
    }
    public function view_customer($value='')
    {
    	$customer = CustomerDetail::where('customer_d_id',$value)->first();
    	return view('admin.view_customer')->with('customer',$customer);
    }
    public function approve_kyc($id='')
    {
        $customer = CustomerDetail::where('customer_d_id',$id)->first();
        $update = CustomerDetail::where('customer_d_id',$id)->update(['kycStatus'=>1, 'kycVerificationCompleted'=>date('Y-m-d')]);
        if($update){
            Session::flash('message', 'KYC Approved!'); 
            Session::flash('alert-class', 'alert-success'); 
        }
       return redirect('/admin/customer'.'/'.$customer->customer_d_id);
    }
    public function disapprove_kyc($id='')
    {
        $customer = CustomerDetail::where('customer_d_id',$id)->first();
        $update = CustomerDetail::where('customer_d_id',$id)->update(['kycStatus'=>0]);
        if($update){
            Session::flash('message', 'KYC Dispproved!'); 
            Session::flash('alert-class', 'alert-danger'); 
        }
       return redirect('/admin/customer'.'/'.$customer->customer_d_id);
    }
    public function orders($value='')
    {
        $orders = Order::all();
        return view('admin.orders')->with('orders',$orders);
    }
    public function view_order($value='')
    {
        // $customer = CustomerDetail::where('customer_d_id',$value)->first();
        // return view('admin.view_customer')->with('customer',$customer);
    }
}
