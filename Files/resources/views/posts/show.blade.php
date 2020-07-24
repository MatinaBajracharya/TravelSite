@extends('layouts.app')

@section('content')
    <div class="container p-4">
        <a href="/posts" class="btn btn-primary" style="margin-bottom:15px;">Go Back</a> 
        <h1>{{$post->title}}</h1>
        <br>
        <br>
        <div class="row">
            <div class="col-md-6 text-justify" style="font-size:18px;">   
                {!!$post->body!!}
            </div>
            <div class="col-md-6">
                <img style="width:86%; height: 80%; padding-top: 5px;" src="/storage/cover_images/{{$post->cover_image}}" alt="">
            </div>
        </div>
            

        <hr>
        <small>Written on {{$post->created_at}} by {{$post->user->name}} </small>
        <hr>
        
         @if(!Auth::guest()) 
            @if(Auth::user()->id == $post->user->id) 
                <a href="/posts/{{$post->id}}/edit" class="btn btn-primary">Edit</a>
                {!!Form::open(['action'=>['PostsController@destroy',$post->id],'method'=>'POST','class'=>'float-right'])!!}
                    {{Form::hidden('_method','DELETE')}}
                    {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
                    {!!Form::close()!!}
            @endif
        @endif 
    
    </div>
    
    
@endsection