@extends('layouts.app')

@section('content')
<div class="home">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 p-4">
            
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif  
                <h1 class="text-center mb-4">Posts</h1>             
                @if (count($posts) > 0)
                        @foreach($posts as $post)
                        <div class="card cd-body bg-light mb-3">
                            <div class="row">
                                <div class="col-md-4">
                                <img style="width:100%;" src="/storage/cover_images/{{$post->cover_image}}" alt="">
                                </div>

                                <div class="col-md-8 pt-3">
                                        <h3><a href="/posts/{{$post->id}}">{{$post->title}}</a></h3>
                                        <small>Post created on {{$post->created_at}} by {{$post->user->name}} </small>
                                </div>
                            </div>
                        </div>
                        
                        @endforeach
                            {{$posts->links()}}
                        @else 
                        <div class="card card-body bg-light">
                            <p>No posts found.</p>
                        </div>
                @endif 
            </div>  
            <div class="col-md-4 p-4">
                <div class="card card-body bg-light" style="margin-top:66px;">
                    <div class="container">
                        <h1>Tell us more!</h1> <hr>
                        <p>Hi there! Thankyou for visiting us. We are excited to hear about your stories and explore the world along with you. Share us your experience. Let's get started, shall we?</p>
                        <a href="/create"><button class="btn btn-outline-info">Try now!</button></a>
                    </div>                   
                </div> 
                
                <div class="card card-body bg-light mt-5">
                    <div class="container">
                        <h1 class="mt-2 text-center">Share</h1><hr>
                        <div class="icon">
                            <a href="https://www.facebook.com/matina.13" target="_blank"><i class="fa fa-facebook fa-3x"></i></a> <br>
                            <a href="https://twitter.com" target="_blank"><i class="fa fa-twitter fa-3x"></i></a> <br>
                            <a href="https://aboutme.google.com/u/0/?referer=gplus" target="_blank"><i class="fa fa-google-plus fa-3x"></i></a><br>
                            <a href="https://np.linkedin.com/" target="_blank"><i class="fa fa-linkedin fa-3x"></i></a> <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>      
    </div>
</div>
@endsection
