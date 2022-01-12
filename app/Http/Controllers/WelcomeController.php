<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Currency;
use App\Models\UserDetails;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\RedirectResponse;


class WelcomeController extends Controller
{
    public function index(){

        return view('welcome');
    }

    public function search(Request $request){

        $validated = $request->validate([
           
            'name' => 'required',
            
        ]);

        $user = User::where('name',$request->name)->first();

        if($user){
            $details = UserDetails::where('user_id',$user->id)->first();
        }else{

            return back()->with('status', "Search result = 0 match found");

        }


       //API drivers

       $fromCurrency = "";
       $toCurrency = "";

       //Deciding the currencies to pass as parameters to gazzlehttp request
    
       switch ($details->currency_symbol) {
           case "USD":
               $fromCurrency = "GBP" and $toCurrency = "USD";
               break;
           case "GBP":
               $fromCurrency = "USD" and $toCurrency = "GBP";
               break;
           case "EUR":
               $fromCurrency = "GBP" and $toCurrency = "EUR";
               break;
               default;
               
       }

       //Converion driver 1
       //Making request uing GazzleHttp
       $response = Http::get('https://data.fixer.io/api/convert?access_key=32cbf6b613551599c8a682b5f60c6fec&from=' . $fromCurrency . '&to=' . $toCurrency . '&amount=' . $details->hourlyrate);
       $query = json_decode($response);

       $insert =  Currency::create([
           'user_id' =>            $user->id,
           'fromcurrency' =>       $query->query->from,
           'tocurrency' =>         $query->query->to,
           'amount'    =>          $query->query->amount,
           'result' =>             $query->result,
           'rates'  =>              $query->info->rate

        ]);


       $fromCurrency1 = "";
       $toCurrency1 = "";

       $user1 = User::where('name', $request->name)->first();

       $details1 = UserDetails::where('user_id',$user1->id)->first();
     
       switch ($details1->currency_symbol) {
           case "USD":
               $fromCurrency1 = "EUR" and $toCurrency1 = "USD";
               break;
           case "GBP":
               $fromCurrency1 = "EUR" and $toCurrency1 = "GBP";
               break;
           case "EUR":
               $fromCurrency1 = "USD" and $toCurrency1 = "EUR";
               break;
               default;
               
       }

       //Conversion Driver 2
       $response1 = Http::get('https://data.fixer.io/api/convert?access_key=32cbf6b613551599c8a682b5f60c6fec&from=' . $fromCurrency1 . '&to=' . $toCurrency1 . '&amount=' . $details1->hourlyrate);
       $query1 = json_decode($response1);


       $insert1 =  Currency::create([
           'user_id' =>            $user1->id,
           'fromcurrency' =>       $query1->query->from,
           'tocurrency' =>         $query->query->to,
           'amount'    =>          $query->query->amount,
           'result' =>             $query->result,
           'rates'  =>             $query->info->rate

        ]);

        // $fmt = numfmt_create( 'de_DE', NumberFormatter::CURRENCY );
// echo numfmt_format_currency($fmt, 1234567.891234567890000, "EUR")."\n";
      
       return view('show',['query' => $query, 'query1' => $query1, 'user' => $user, 'details' => $details]);  
    }


}
