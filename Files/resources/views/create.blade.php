@extends('layouts.app')

@section('content')
<section id="share-section" class="bg-light text-muted py-3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                                <h1>Create a post!</h1>
                                {!! Form::open(['action'=>'PostsController@store','method'=>'POST','enctype'=>'multipart/form-data' ]) !!}
                                <div class="form-group">
                                        {{ Form::label('title', 'Title') }}
                                        {{Form::text('title','',['class'=>'form-control','placeholder'=>'title'])}}
                                </div>
                                    
                                <div class="form-group">
                                        {{ Form::label('body', 'Body') }}
                                        {{Form::textarea('body', '', ['id' => 'article-ckeditor','class'=>'form-control','placeholder'=>'Your text here.'])}}
                                </div>
                                <div class="form-group">
                                        {{Form::file('cover_image')}}
                                </div>
                                {{Form::submit('Submit',['class'=>'btn btn-primary'])}}
                                {!! Form::close() !!}
                        </div>
                        <div class="col-md-6 p-5">
                               <img src="/storage/images/create.jpg" alt="" class="img-fluid mb-3 rounded-circle">  
                        </div>
                    </div>
                </div>
            </section>

@endsection