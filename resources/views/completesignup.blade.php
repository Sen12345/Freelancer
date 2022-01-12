@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('COMPLETE SIGNUP') }}</div>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif
                </div>

                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="w-50 m-auto">
                        <form action="{{ route('completesignup') }}" method="post">
                            @csrf
                            <div class="form-group">
                            
                          <div>  <input type="text" name="jobtitle" placeholder="Job title" class="form-control @error('jobtitle') border border-danger @enderror  my-1"></div>
                            <div><input type="number" name="salary" placeholder="Salary" class="form-control @error('salary') border border-danger @enderror my-1"></div>
                           
                            <div> 
                                <select name="currency_symbol" class="form-select  @error('currency_symbol') border border-danger @enderror my-1" aria-label="Default select example">
                                    <option selected>Select currency</option>
                                    @foreach($currency as $value)
                                    <option value="{{ $value }}">{{ $value }}</option>
                                    @endforeach
                                  </select>
                            </div>
                          
                           <div>  <input type="number" name="hourlyrate" placeholder="Hourly rate" class="form-control @error('hourlyrate') border border-danger @enderror my-1"></div>
                            </div>
                            <input type="submit" value="Submit" class="btn btn-success my-1">

                        </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection