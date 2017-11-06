<?php

namespace App\Http\Controllers\Adminauth;

use App\Admin;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use App\BloodGroup;
use App\Address;
use Auth;

class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    


    protected $guard = 'admin';
	
	public function index()
	{
		// if (Auth::guard('admin')->check())
		// {
		// 	return redirect('/admin');
		// }
		
		return view('admin.home');
	}

	public function showLoginForm()
	{
		if (Auth::guard('admin')->check())
		{
			return redirect('/admin');
		}
		
		return view('admin.auth.login');
	}
	

	public function showRegistrationForm()
	{
		return view('admin.auth.register');
	}
	
	public function resetPassword()
	{
		return view('admin.auth.passwords.email');
	}
	
	public function logout(){
		Auth::guard('admin')->logout();
		return redirect('/admin/login');
	}
}
