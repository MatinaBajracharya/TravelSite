<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TravelStories</title>
    <link rel="stylesheet" href="/css/app.css">
</head>
<body>
        <!-- Navigation -->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a href="/" class="navbar-brand"><img width="20px" height="25px" src="/storage/images/logo.png" style="margin-right:10px;">TravelStories</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <ul class="navbar-nav float-right">
                    <li class="nav item {{Request::is('about') ? 'active' : ''}}">
                        <a href="/about" class="nav-link">About</a>
                    </li>
                </ul>
            </div>
        </nav>

            <div class="content">
                <div class="container">
                    <div class="headline p-4 text-center">
                       <p class="line">Your story matters. Share us your experience. </p>
                        <p><a class="btn btn-primary btn-lg" href="/login" role="button">Login</a> <a class="btn btn-success btn-lg" href="/register" role="button">Register</a></p>    
                    </div>
                </div>
            </div>

            <footer class="footer bg-dark p-4">
                <div class="container text-center">
                           
                            <h1 class="h3">TravelStories</h1>
                            <p>Copyright &copy; 2019</p>
                        
                    </div>
                </div>
            </footer>
</body>
</html>