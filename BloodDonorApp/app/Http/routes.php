<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/



//Route::auth();

Route::get('/', 'UserController@index');
Route::get('/admin', 'AdminAuth\AuthController@index');
Route::get('/admin/login','AdminAuth\AuthController@showLoginForm');
Route::post('/admin/login','AdminAuth\AuthController@login');
Route::get('/admin/passwords/reset','AdminAuth\PasswordController@resetPassword');
Route::get('/admin', 'Admin\BloodOwner@index');
Route::group(['middleware' => ['admin']], function () {
    //Login Routes...
    Route::get('/admin/logout','AdminAuth\AuthController@logout');
	
    // Registration Routes...
    Route::get('admin/register', 'AdminAuth\AuthController@showRegistrationForm');
    Route::post('admin/register', 'AdminAuth\AuthController@register');

    
});



Route::group(['middleware' => 'web'], function () {
    Route::auth();

	Route::get('/', 'UserController@index');

    Route::get('/home', 'UserController@index');

    Route::get('/register', 'Auth\AuthController@showRegistrationForm');
	
});