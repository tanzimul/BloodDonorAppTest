<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\User;

use App\BloodGroup;

use App\Address;

use DB;

class AdminController extends Controller
{
    
    public function index()
    {
        $users = DB::table('users')
        ->join('addresses','addresses.id','=','users.address')
        ->join('blood_groups','blood_groups.id','=','users.bloodGroup')
        ->where('blood_groups.id', '>=','users.bloodGroup')
        ->selectRaw('users.name,users.email,addresses.address,users.contactNo,blood_groups.bloodGroup')
        ->orderBy('users.id', 'desc')
        ->get();
        return view('admin/index', compact('users'));
    }

    public function login()
    {
        $admins = DB::table('admins')
        ->where('id', '=',1)
        ->get();
        return view('admin/login');
    }

    public function getlogin(Request $request)
    {
        $admins = DB::table('admins')
        ->where('id', '=',1)
        ->get();
        return view('admin/index');
    }

}
