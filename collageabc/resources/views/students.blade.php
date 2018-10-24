@extends('layouts.app')

@section('content')
  <h1>students</h1>
  @if(count($students) >0)

  @foreach(@messages as $message)

  <ul class="list-group"></ul>
  <li class="list-group-item">full_name:{{ $students->full_name }}</li>
  <li class="list-group-item">age:{{ $students->age }}</li>
  <li class="list-group-item">email:{{ $students->email }}</li>
  <li class="list-group-item">full_name:{{ $students->full_name }}</li>

  @endforeach
  @endif
@endsection


@section ('sidebar')
@parent
<P>This is appendedtothe sidebar</P>

@endsection