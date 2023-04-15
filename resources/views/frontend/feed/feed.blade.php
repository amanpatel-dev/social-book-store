@extends('layouts.apps')
@section('content')
    <div class="container ">
        @if (\Session::has('message'))
            <div class="alert alert-success">
                <ul>
                    <li>{!! \Session::get('message') !!}</li>
                </ul>
            </div>
        @endif
        {{-- sidenavbar --}}
        @include('layouts.include.navbar')
        <div class="clint-btn">
            <span><a href="/makeclint">+</a></span>
        </div>
        <hr>
        @foreach ($post as $item)
            <div class="d-flex justify-content-between mt-3 tweet-div">

                {{-- {{dd($item)}} --}}
                {{-- {{dd($item->tweetUserDetail->username)}} --}}

                <div class="contents col-sm-12 d-flex justify-content-between">
                    <div class="col-2 me-2">
                        <img src="{{ asset('images/AliAbdaal.jpg') }}" class="profile-pic" alt="">
                    </div>
                    <div class="col-10">
                        <div class="d-flex ">
                            <div class="col-sm-3 me-1"><a
                                    href="{{ url('/profile/' . $item->user_id) }}">{{ $item->tweetUserDetail->name }}</a>
                            </div>
                            <div class="col-sm-2 me-1">
                                {{ Str::limit('@' . $item->tweetUserDetail->userDetail->username, 5) }}
                                </p>
                            </div>
                            <div class="col-sm-2 me-1"> {{ CommonHelper::times_ago($item->updated_at) }}</div>
                        </div> 
                        <div>
                            <div class="clint-post-image">
                                <div class="clints-post-text">
                                    <p>{{ $item->clint }}</p>
                                </div>
                                @if ($item->image)
                                    <img src="{{ asset('uploads/tweetsImg/' . $item->image) }}"class="img-fluid" alt=""
                                        srcset="">
                                    
                                    @endif
                            </div>
                         
                          
                        </div>
                        <div class="d-flex col-xm-12 justify-content-left mt-3">
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
                                    data-tweet={{ $item->id }} data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                        class="bi bi-chat"></i>
                                        <div class="mt-counter likes-count d-inline-block">
                                            <p class="tweet_comment_count">{{ CommonHelper::commentCount($item->id) }}</p>
                                        </div>
                                    </span>
                            </div>

                            {{-- <div> <span class="action-pic" alt="" id="retweet-btn"><i
                                        class="bi bi-arrow-repeat"></i></span></div>
                            <div> <span class="action-pic" alt="" id="share-btn"><i
                                        class="bi bi-share"></i></span></div> --}}

                        </div>
                    </div>
                </div>

                {{-- <div class="col-1 text-end">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                        <path
                            d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
                    </svg>
                </div> --}}

            </div>
           
        @endforeach


        <hr>

        <div class="">
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content popUpComment">

                    </div>
                </div>
            </div>
        </div>
    </div>

@section('script')
    <script src="{{ asset('/js/like.js') }}"></script>
    <script src="{{ asset('/js/comment.js') }}"></script>
@endsection
@endsection
