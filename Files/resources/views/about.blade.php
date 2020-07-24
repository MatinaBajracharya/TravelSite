@extends('layouts.app')

@section('content')
    <!-- about HEAD  -->
    <section id="create-head-section" class="bg-info">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="p-5">
                        <h1 class="display-4">About</h1>
                        <p class="lead">Every traveler has their own unique story he or she loves to share. It is one big important part of the travel experience.Whether it is a funny, special or an interesting adventure on the road. Share us yours.</p>
                        <a href="/home" class="btn btn-outline-light">Find Out More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About SECTION  -->
    <section id="about-section" style="padding: 65px;">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mt-4">
                    <img src="/storage/images/create2.jpg" alt="" class="img-fluid mb-3 rounded-circle">
                </div>
                <div class="col-md-8">
                    <h3>Share Your Story</h3>
                    <p>Whether it’s crossing borders for love, forming bonds that transcend boundaries, exploring a new passion, or learning to love yourself, discover how travel opens our hearts and expands our possibilities.</p>
                    <div class="d-flex flex-row">
                        <div class="p-4 align-self-start">
                            <i class="fa fa-check"></i>
                        </div>
                        <div class="p-4 align-self-end">
                            <p>Remember to be nice! We love a good and a friendly environment.</p>
                        </div>
                    </div>
                    <div class="d-flex flex-row">
                        <div class="p-4 align-self-start">
                            <i class="fa fa-check"></i>
                        </div>
                        <div class="p-4 align-self-end">
                            <p>We also love good travel stories! We want to keep it simple and to the point. Read all those great stories around the world. You can instantly share them as well if you enjoy them on facebook, twitter, google plus or linkedin.</p>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
@endsection