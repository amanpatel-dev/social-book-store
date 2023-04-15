<?php

namespace App\Http\Controllers\Frontend;

use App\Models\allClint;
use App\Models\followData;
use Illuminate\Http\Request;
use App\Helpers\CommonHelper;
use App\Helpers\FollowHelper;
use App\Models\userDetail;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class feedController extends Controller
{
    public function index()
    {
        
        $user_id = Auth::user()->id;
        // dd($user_id);
        $isUserFollow = FollowHelper::isUserFollow(Auth::user()->id, $user_id);
        $countFollowing = FollowHelper::countFollowing($user_id);
        if($countFollowing==0){
            $post=allClint::get();
        //    dd($post);
        }

        else{
            $post = allClint::where('user_id', $user_id)->orWhereIn('user_id', function ($q) {
                $q->from("follower_data")
                    ->select("following_id")
                    ->where("follower_id", "=", Auth::user()->id);
            })->get();
        }

        $whotofollowdata= DB::table('users')
        ->select('*')
        ->where('id','!=',  $user_id)
        ->whereNotIn('id',(function ($query) {
            $query->from('follower_data')
                ->select('following_id')
                ->where('follower_id','=',  Auth::user()->id);
        }))
        ->get();
        
  
        return view('frontend.feed.feed', compact('post','whotofollowdata','isUserFollow'));
    }
}
