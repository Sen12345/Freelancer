<?php

namespace App\Http\Controllers;

use App\Models\UserDetails;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
    }

    
    public function index()
    {
        $details = UserDetails::where('user_id',auth()->user()->id)->first();

        if(!isset($details->jobtitle)){
            return redirect('completesignup');
        }

        return view('home');

    }
}
