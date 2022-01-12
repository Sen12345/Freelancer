<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserDetails;

class CompletesignupController extends Controller
{
    public function index(){
        $currency = array('USD','UER','GBP');
        return view('completesignup', compact('currency'));
    }

    public function store(Request $request){
        $validated = $request->validate([
           
            'jobtitle' => 'required',
            'salary' => 'required',
            'currency_symbol' => 'required',
            'hourlyrate' => 'required'
        ]);



        UserDetails::create([
            'user_id' => auth()->user()->id,
            'jobtitle' => $request->jobtitle,
            'salary' => $request->salary,
            'currency_symbol' => $request->currency_symbol,
            'hourlyrate' => $request->hourlyrate,
            
        ]);

        return redirect('/');
    }


}