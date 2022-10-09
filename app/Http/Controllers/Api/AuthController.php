<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Controller;


use App\Models\Session;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Laravel\Sanctum;
use App\Models\User;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Hash;


class AuthController extends Controller
{
   

    // public function index()
    // {
    //     return view('login.login');
    // }
    
    public function authenticate(Request $request)
    {
         if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $request->session()->regenerate();
            $user = Auth::user();
                $success['token'] =  $user->createToken('SanctumAPI')->plainTextToken;
                $success['name'] =  $user->name;
    
                return  response()->json(
                    ['name' => $user->name,
                    'email' => $request->email,
                    'password' => $request->password,
                    
                   'token'=>$success['token']]);
            } else {
                return response()->json([
                             'message' => 'Anauthorised'
                        ], 401);
            }
        
  
    }
    public function logout()
    {
        session()->invalidate();
        auth()->user()->tokens()->delete();

        return [
            'message' => 'Logged out'
        ];
    }

    
}
