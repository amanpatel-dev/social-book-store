@extends('layouts.apps')
@section('content')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/profile.css') }}">
@endsection
<div class="wrapper">
    <div class="row justify-center ">
        <div class="col ">
            {{-- profile info --}}
            <div class="col-sm-12 profile-banner">
                <img src="{{ asset($userDetail->background_pic) }}" class="img-fluid" alt="">
            </div>
            <div class="pt-3 mb-3 ps-3 pe-3 ">
                <div class="d-flex justify-content-between">
                    <div> <img src="{{ asset('images/aman.jpg') }}" class="main-profile-pic" alt=""></div>
                    <div>
                        {{-- {{dd(Auth::user()->id )}} --}}
                        <!-- HTML !-->
                        @if ($userDetail->userMainDetail->id != Auth::user()->id)
                            <button class=" follow-btn  <?= $isUserFollow ? 'following' : 'follow' ?>" role="button"
                                data-follow={{ $userDetail->userMainDetail->id }} data-userid={{ Auth::user()->id }}>
                                @if ($isUserFollow)
                                    Following
                                @else
                                    Follow
                                @endif

                            </button>
                        @else
                            <!-- Button trigger modal -->
                            <button type="button" class="button-13">
                                <a href="/profile/edit/{{ Auth::user()->id }}">Edit Profile</a>
                            </button>
                        @endif

                    </div>
                </div>
                <div>
                    <ul>
                        <li style="font-weight: bold">{{ $userDetail->userMainDetail->name }}</li>
                        <li>@ {{ $userDetail->username }}</li>
                    </ul>
                </div>
                <div class="profile-bio">
                    {{ $userDetail->bio }}
                </div>
                <br>
                <div class="pb-3">
                    <span class="pe-3"><i class="bi bi-geo-alt"></i> {{ $userDetail->state }},
                        {{ $userDetail->country }}
                    </span>
                    <span><i class="bi bi-calendar"></i> Joined September 2021</span>
                </div>
                <div><span class="count-following">{{ $countFollowing }}</span>
                    Following
                    <span class="count-follower ps-3">{{ $countFollowers }}</span> Followers
                </div>
            </div>

            {{-- clint options --}}
            <div class="d-flex justify-content-between p-2 clint-filter-btn">
                <div>
                    <a class="button-13">All</a>
                </div>
                <div>
                    <a class="button-13">ReClints</a>
                </div>
                <div>
                    <a class="button-13">Replies</a>
                </div>
            </div>
            @foreach ($post as $item)
                <div class="d-flex justify-content-between">

                    {{-- {{dd($item->tweetUserDetail->userDetail->username)}} --}}

                    <div class="contents col-sm-11 d-flex justify-content-between">
                        <div class="col-2 me-2">
                            <img src="{{ asset('images/AliAbdaal.jpg') }}" class="profile-pic" alt="">
                        </div>
                        <div class="col-9">
                            <div class="d-flex ">
                                <div class="col-sm-4 me-1"><a
                                        href="{{ url('/profile/' . $item->user_id) }}">{{ $item->tweetUserDetail->name }}</a>
                                </div>
                                <div class="col-sm-4 me-1">
                                    {{ Str::limit('@' . $item->tweetUserDetail->userDetail->username, 5) }}
                                    </p>
                                </div>
                                <div class="col-sm-4 me-1"> {{ CommonHelper::times_ago($item->updated_at) }}</div>
                            </div>
                            <div>
                                <div class="clint-post-image">
                                    <img src="{{ asset('images/AliAbdaal.jpg') }}" class="img-fluid" alt=""
                                        srcset="">
                                </div>
                                <div class="clints-post-text">
                                   
                                        <p>{{ $item->clint }}</p>
                                </div>
                            </div>
                            <div class="d-flex col-xm-9 justify-content-left">
                                <div> <span
                                        class="action-pic {{ CommonHelper::userLiked(Auth::user()->id, $item->id) ? 'unlike-btn' : 'like-btn' }} "
                                        alt="" id="like-btn" data-tweet={{ $item->id }}>
                                        <i class="bi bi-heart">
                                        </i>
                                        <div class="mt-counter likes-count d-inline-block">
                                            <p class="tweet_like_count">{{ CommonHelper::LikeCount($item->id) }}</p>
                                        </div>
                                    </span>
                                </div>
                                <div class="ms-5"> <span class="action-pic comment" alt="" id="comment-btn"
                                        data-tweet={{ $item->id }} data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"><i class="bi bi-chat"></i></span></div>

                                {{-- <div> <span class="action-pic" alt="" id="retweet-btn"><i
                                            class="bi bi-arrow-repeat"></i></span></div>
                                <div> <span class="action-pic" alt="" id="share-btn"><i
                                            class="bi bi-share"></i></span></div> --}}

                            </div>
                        </div>
                    </div>

                    <div class="col-1 text-end">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                            <path
                                d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
                        </svg>
                    </div>

                </div>
            @endforeach 
        </div>
        <div class="">
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content popUpComment">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@section('script')
    <script src="{{ asset('/js/photo.js') }}"></script>
    <script src="{{ asset('/js/like.js') }}"></script>
    <script src="{{ asset('/js/follow.js') }}"></script>
    <script src="{{ asset('/js/comment.js') }}"></script>
@endsection
@endsection
