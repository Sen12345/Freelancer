@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header" style="font-family: 'Roboto';color:purple">{{ __('FIND USER DETAILS') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                </div>

<div class="row">
    <div class="col-md-12 text-center">
<form action="{{ route('welcome') }}" method="POST">
   @csrf
   <div>
   @error('name')
   <span>
       <strong>{{ $message }}</strong>
   </span>
   @enderror
</div>
    <input type="text" name="name" @if(auth()->user()) value="{{ auth()->user()->name }}" @endif  placeholder="User's name" class="my-3">

   
    <input type="submit"  value="Search" class="btn btn-success">
</form>
    </div>
</div>

            </div>
        </div>
    </div>
</div>
@endsection
