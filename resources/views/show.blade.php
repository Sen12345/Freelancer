@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card-body">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
            </div>
            <div class="card">
                <div style="font-family: 'Roboto' ;color:purple" class="card-header  text-center pt-4"><h5>{{ __('USER DETAILS ') }}</h5></div>

<div class="row">
    <div class="col-md-12 text-center">

        <ul class="list-group">
            <li class="list-group-item ">{{ $user->name }}</li>
            <li class="list-group-item">{{ $user->email }}</li>
            <li class="list-group-item">{{ $details->jobtitle }}</li>
            <li class="list-group-item">Hourly rate: {{ $details->hourlyrate }}</li>
            <li class="list-group-item">Salary: £{{ number_format($details->hourlyrate * 8 * 5 * 52)  }}</li>
            <h5 style="font-family: 'Roboto' ;color:purple" class="my-2">{{ __('EXCHANGE DETAILS ') }}</h5>
            <li class="list-group-item">From: {{ $query->query->from }}</li>  <li class="list-group-item">To: {{ $query->query->to }}</li>
            <li class="list-group-item">Exchange rate: {{ $query->info->rate }}</li>
            <li class="list-group-item">Exchange result: {{ round($query->result) }}</li>
            
        </ul>
        
    </div>
</div>

            </div>
        </div>
    </div>
</div>
@endsection
