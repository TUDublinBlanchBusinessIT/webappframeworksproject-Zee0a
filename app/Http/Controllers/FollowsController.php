<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class FollowsController extends Controller
{
    public function __construct()
    {

        $this->middleware('auth');

    }

    public function store(User $user)
    {
        return $user->following()->toggle($user->profile);
    }
}
