@if(Request::is('about'))
    <nav class="navbar navbar-expand-md navbar-dark bg-dark shadow-sm">
@else
    <nav class="navbar navbar-expand-md navbar-dark bg-dark shadow-sm mb-2">
@endif
    <div class="container">
        @guest
            <a href="/" class="navbar-brand"><img width="20px" height="25px" src="/storage/images/logo.png" style="margin-right:10px;">TravelStories</a>
        @else
            <a href="/home" class="navbar-brand"><img width="20px" height="25px" src="/storage/images/logo.png" style="margin-right:10px;">TravelStories</a>
        @endguest
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            
            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                    @guest
                    <ul class="navbar-nav mr-auto">
                        <li class="nav item {{Request::is('about') ? 'active' : ''}}">
                            <a href="/about" class="nav-link">About</a>
                        </li>
                    </ul>
                    @else
                        <ul class="navbar-nav mr-auto">
                        <li class="nav item {{Request::is('home') ? 'active' : ''}}">
                                <a href="/home" class="nav-link">Home</a>
                            </li>
                            <li class="nav item {{Request::is('about') ? 'active' : ''}}">
                                <a href="/about" class="nav-link">About</a>
                            </li>
                            <li class="nav item {{Request::is('create') ? 'active' : ''}}">
                                <a href="/create" class="nav-link">Create</a>
                            </li>
                        </ul> 
                    @endguest
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item {{Request::is('login') ? 'active' : ''}}">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    @if (Route::has('register'))
                        <li class="nav-item {{Request::is('register') ? 'active' : ''}}">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                    @endif
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>
                        
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a href="/dashboard" class="dropdown-item">My Posts</a>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>

    