<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\laravel;

use Illuminate\support\Facades\URL;

use Illuminate\support\Facades\DB;

class reg extends Controller
{
	/**
	*Display a listing of a resiurce.
	*
	*@return \Illuminate\Http\Response
	*/
	public function index()
	{
		return view("welcome");
	}

	/**
	*Show the form for creating a new resource.
	*
	*@return \Illuminate\Http\Response
	*/
	public function create()
	{
		//

	}

	/**
	*store a newly created resource in storage.
	*
	*@param \Illumunate\Http\Request $request
	*@return \Illuminate\Http\Response
	*/

    
    public function store(Request $request)
    {
    	//print_r($request->input());
    	$result=DB::insert("insert into students(full_name,age,email,password) values(?,?)",[$request->input('full_name'),$request->input('age'),$request->input('email'),$request->input('password'))]);
echo $result;
    	/*$user = new ABC;
    	$user->full_name = Input::get("full_name");
    	$user->age = Input::get("age");
    	$user->email = Input::get("email");
    	$user->password = Input::get("password");
    	$user->save();*/

    	return("Registered Successfully!");
    }
}
?>