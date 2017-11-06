<?php
namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

use Auth;
use App\Admin;
use App\User;

use App\BloodGroup;

use App\Address;

use DB;

class BloodOwner extends Controller
{
    public function __construct(){
          $this->middleware('admin');
    }
    
    public function index(){
      $users = DB::table('users')
      ->join('addresses','addresses.id','=','users.address')
      ->join('blood_groups','blood_groups.id','=','users.bloodGroup')
      ->selectRaw('users.name,users.email,addresses.address,users.contactNo,blood_groups.bloodGroup')
      ->orderBy('users.id', 'desc')
      ->get();
      return view('admin.home', compact('users'));
      }
}