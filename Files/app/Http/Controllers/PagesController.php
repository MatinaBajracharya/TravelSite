<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\User;

class PagesController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth',['except'=>['index','about']]);
    }
    
    public function index(){
        return view('index');
    }

    public function home(){
        $posts = Post::orderBy('created_at','desc')->paginate(5);
        return view('home')->with('posts',$posts);
    }

    public function about(){
        return view('about');
    }
    public function create(){
        return view('create');
    }

    public function mypost(){
        $user_id = auth()->user()->id;
        $user = User::find($user_id);
        return view('dashboard')->with('posts', $user->posts->sortByDesc('created_at'));
    }

}