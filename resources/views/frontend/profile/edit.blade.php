@extends('layouts.apps')
@section('content')

    <form action="{{ url('profile/edit/' . $userDetail->userMainDetail->id) }}" method="POST"
        enctype="multipart/form-data">
        @csrf
        @method('PUT')

        {{-- profile inf --}}
        <div class="col-sm-12 profile-banner">
                <img src="http://127.0.0.1:8000/uploads/background/1673614212.jpg" class="img-fluid" alt="">
                {{-- <img src="{{ asset($userDetail->profile_pic) }}" class="img-fluid" alt=""> --}}
                <div class="banner-edit-btn">
                {{-- <a class="button-13" type="in" ><i class="bi bi-pencil-square"></i></a> --}}
                <label for="backgroundImage">
                    <i class="bi bi-images "></i>
                </label>
                <input type="file" id="backgroundImage" class="d-none" name="backgroundImage" id="">
            </div>
        </div>
        <div class="pb-0 p-3 mb-3 ">
            <div class="d-flex  ">
                {{-- <div> <img src="{{ asset($userDetail->background_pic) }}" class="main-profile-pic" alt=""> --}}
                <div> <img src="http://127.0.0.1:8000/images/aman.jpg " class="main-profile-pic" alt="">
                </div>
                <div class="mr-2 mb-2">
                    <input type="file" name="profileImage" id="">
                    {{-- <button class="button-13" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" role="button"><i class="bi bi-pencil-square"></i></button> --}}
                </div>
            </div>
            <div style="font-weight: bold"><input type="text" name="name" class="form-control mb-2"
                    value=" {{ Auth::user()->name }}"></li>
            </div>
            <div class="input-group mb-2">
                <span class="input-group-text" id="basic-addon1">@</span>
                <input type="text" class="form-control" placeholder="Username" name="username"
                    value="{{ $userDetail->username }}" aria-label="Username" aria-describedby="basic-addon1">
            </div>

            <div class="profile-bio">
                <textarea name="bio" id="" row="4" class="form-control mb-2">
                                {{ $userDetail->bio }}
                            </textarea>
            </div>

            <br>

            <div class="pb-3 d-flex justify-content-between ">
                <div>
                    <input value="{{ $userDetail->state }}" name="state" class="form-control" id="">
                </div>
                <div>
                    <input value="{{ $userDetail->country }}" name="country" class="form-control" id="">
                </div>
            </div>
        </div>
        <hr>
        <div class="d-flex justify-content-end">
            <div class="m-2">
                <a class="button-13" href="{{ url('/profile') }}"><i class="  bi bi-arrow-left-circle-fill"></i>
                    Back
                </a>
            </div>
            <div class="m-2">
                <button class="button-13" type="submit" role="button">Save</a>
            </div>
        </div>
    </form>

    <!-- Button trigger modal -->
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
@endsection
