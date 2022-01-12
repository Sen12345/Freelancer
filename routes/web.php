<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

Auth::routes();


Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('/');
Route::get('/welcome', [App\Http\Controllers\WelcomeController::class, 'index'])->name('welcome');
Route::post('/welcome', [App\Http\Controllers\WelcomeController::class, 'search']);
// Route::get('/show', [App\Http\Controllers\ShowController::class, 'index'])->name('show')->name('show');
Route::get('/completesignup',[App\Http\Controllers\CompletesignupController::class, 'index'])->name('completesignup');
Route::post('/completesignup',[App\Http\Controllers\CompletesignupController::class, 'store']);
