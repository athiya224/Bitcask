<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Complaint_types;
use App\Models\Complaint;
use Carbon\Carbon;
use Illuminate\Support\Str;

class Getcustomer extends Controller
{
	public function index($value='')
	{
		return Customer::all();
	}
	public function signup(Request $request)
	{
		$customer = new Customer;
		$customer->F_Name = $request->fname;
		$customer->L_Name = $request->lname;
		$customer->password = md5($request->password);
		$customer->Phone = $request->phone;
		$customer->Email_id = $request->email;
		$customer->Un_id = md5($request->Un_id);
		$customer->activeUser = 0;
		$check = Customer::where('Phone',$request->phone)->first();
		$passwordcheck = Customer::where('Un_id',$request->Un_id)->first();
		if($passwordcheck)
			return ["content" => 'Id already in use', "statusCode" => 500];
		if($check) 
			return ["content" => 'User Exists', "statusCode" => 500];
		$customer->save();
		if($customer) $statusCode = '200'; else $statusCode = 500; 
		return ["content" => $customer, "statusCode" => $statusCode];
	}
	public function complaint_types(Request $request)
	{
		$complaints = Complaint_types::all();
		if($complaints)
			return ["content" => $complaints, "statusCode" => 200];
		else
			return ["content" => 'No data', "statusCode" => 500];
	}
	public function register_complaint(Request $request)
	{
		$image = $request->image;  
        $image = str_replace('data:image/png;base64,', '', $image);
        $image = str_replace(' ', '+', $image);
        $imageName = Str::random(10).'.'.'png';
        \File::put(storage_path(). '/' . $imageName, base64_decode($image));
		$complaint = new Complaint;
		$complaint->description = $request->complaint;
		$complaint->Un_id = $request->user_id;
		$complaint->complaint_type_id = $request->complaint_type_id;
		$complaint->file = storage_path(). '/' . $imageName;
		// $complaint->date = Carbon::now();
		$complaint->save();

		if($complaint) return ["success" => true,"message" => 'Complaint registered successfully',"content" => $complaint, "statusCode" => 200];
	}
	public function profile(Request $request)
	{
		$user = Customer::where('customer_id',$request->user_id)->first();
		$complaints = Complaint::where('user_id',$request->Un)->get();
		$user->complaints = $complaints;
		return $user;
	}
    
}
