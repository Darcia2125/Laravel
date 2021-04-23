<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('home');
})->middleware('auth');

Route::get('/questionnaire1',function(){
    return view('questionnaire\questionnaire1');
});
Route::get('/utilisateur',function(){
    return view('utilisateur');
});
Route::get('/questionnaire2',function(){
    return view('questionnaire\questionnaire2');
});
Route::get('/modifier',function(){
    return view('modifier');
});
Route::get('/supprimer',function(){
    return view('supprimer');
});