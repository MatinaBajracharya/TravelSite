@extends('layouts.app')

@section('content')
<div class="container">
    {!! Form::open(['action'=>['PostsController@update',$post->id],'method'=>'POST','enctype'=>'multipart/form-data' ]) !!}
    <div class="form-group">
            {{ Form::label('title', 'Title') }}
            {{Form::text('title',$post->title,['class'=>'form-control','placeholder'=>'title'])}}
    </div>

    <div class="form-group">
            {{ Form::label('body', 'Body') }}
            {{Form::textarea('body', $post->body, ['id' => 'article-ckeditor','class'=>'form-control','placeholder'=>'Your text here.'])}}
    </div>
    <div class="form-group">
        {{Form::file('cover_image')}}
    </div>
    {{Form::hidden('_method','PUT')}}
    {{Form::submit('Submit',['class'=>'btn btn-primary mb-2'])}}
    {!! Form::close() !!}
</div>
@endsection