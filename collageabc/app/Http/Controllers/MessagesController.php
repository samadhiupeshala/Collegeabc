<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\student;

class MessagesController extends Controller
{
    public function submit(Request $request){
    	$this->validate($request[
    		'full_name'=>'required',
    		'age'=>'required',
    		'email'=>'required',
    		'password'=>'required'
    	]);

    	$message=new student;
    	$message->full_name=$request->input('full_name');
    	$message->age=$request->input('age');
    	$message->email=$request->input('email');
    	$message->password=$request->input('password');

    	$message->save();

    	return redirect('/');
    }
}
