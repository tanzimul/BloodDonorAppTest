<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\User;

use App\BloodGroup;

use App\Address;

use DB;

use Auth;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $user = Auth::user();
        $bloodGroup = $user->bloodGroup;
        $users = DB::table('users')
        ->join('addresses','addresses.id','=','users.address')
        ->join('blood_groups','blood_groups.id','=','users.bloodGroup')
        ->where('blood_groups.id', '=', $bloodGroup)
        ->selectRaw('users.name,users.email,addresses.address,users.contactNo,blood_groups.bloodGroup')
        ->orderBy('users.id', 'desc')
        ->get();
        return view('users.index', compact('users'));
    }
}


