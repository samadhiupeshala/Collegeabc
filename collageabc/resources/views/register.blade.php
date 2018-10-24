@extends('layouts.app')

@section('content')
  <h1>register</h1>
  {!! Form::open(['url' => 'register/submit']) !!}

  <div class="form-group">
  	{{Form::label('full_name', 'full_name') }}
  	{{ Form::text('full_name', '',['class'=>'form-control','placeholder'=>'Enter full_name']) }}
  </div>
  <div class="form-group">
  	{{Form::label('age', 'age') }}
  	{{ Form::text('age', ''),['class'=>'form-control','placeholder'=>'Enter age'] }}
  </div>
  <div class="form-group">
  	{{Form::label('email', 'email') }}
  	{{ Form::text('email', ''),['class'=>'form-control','placeholder'=>'email'] }}
  </div>
  <div class="form-group">
  	{{Form::label('password', 'password') }}
  	{{ Form::text('password', ''),['class'=>'form-control','placeholder'=>'password'] }}
  </div>
   
{!! Form::close() !!}
@endsection