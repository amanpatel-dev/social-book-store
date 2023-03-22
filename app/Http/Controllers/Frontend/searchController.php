<?php

namespace App\Http\Controllers\Frontend;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class searchController extends Controller
{
    public function index()
    {
        return view('frontend.search.index');
    }

    public function searchUser(Request $request)
    {
        $query = $request->search;
        $filterResult = User::where('name', 'LIKE', '%' . $query . '%')->get();
        $output = "";
        if (isset($filterResult)) {

            foreach ($filterResult as $filterResult) {
            
                $output .= '
        <div>
        <ul>
            <li>
                <a class="card mt-3" href="'.url("/profile/".$filterResult->id).'">
                    <div class=" card-body d-flex ">
                        <div class="col-2">
                            <img src="' . asset('images/AliAbdaal.jpg') . ' " class="profile-pic" alt="">
                        </div>
                        <div class="dfjcspaic-- col-10">
                            <div class="col-9">
                                <span>' .  $filterResult->name . '</span>
                                <span>' . $filterResult->userDetail->username . '</span>
                                <p class="text-truncate col-8">
                                    Engineer, plays cricket alot | Actions speaks louder|Prespective
                                </p>
                            </div>
                        <div class="col-3 dfjcsb-- m-2">
                            <button class="button-13" >Follow</button>
                        </div>
                    </div>
       
                </a>
            </li>
        </ul>
        </div>
        ';
            }
        } else {
            $output .= '<div>
        <h1>No result found</h1>
        </div>
        .';
        }

        // dd($filterResult->userDetail);     
        return Response($output);
    }

    public function likedTweet(Request $request)
    {
       dd($request);
    }
}
