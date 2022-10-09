<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Api\Controller;
use App\Models\Setting;
use Carbon\Carbon;
use App\Models\Session;
use App\Models\Queue;
use Illuminate\Http\Request;
use App\Models\Session as ModelsSession;

use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Laravel\Sanctum;
use App\Models\User;

class DisplayController extends Controller
{
    public function showDisplayUrl()
    {
       
        return  response()->json([ Queue::first()]);
    }
}
