@extends('layouts.admin')

@section('content')
    <div class="row">
        <div class="col-md-12 grid-margin">
            @if (session('message'))
                <h2 class="alert alert-success">{{ session('message') }}</h2>
            @endif

            <div class="me-md-3 me-xl-5">
                <h2>Dashboard</h2>
                <p class="mb-md-0">Analytics</p>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <div class="card card-body bg-primary text-white mb-3">
                        <label for="">Total Orders</label>
                        <h1>{{$totalOrder}}</h1>
                        <a href="{{url('admin/orders')}}">View</a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-body bg-success text-white mb-3">
                        <label for="">Today Orders</label>
                        <h1>{{$todayOrder}}</h1>
                        <a href="{{url('admin/orders')}}">View</a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-body bg-warning text-white mb-3">
                        <label for="">Monthly Orders</label>
                        <h1>{{$thisMonthOrder}}</h1>
                        <a href="{{url('admin/orders')}}">View</a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-body bg-danger text-white mb-3">
                        <label for="">Yearly Orders</label>
                        <h1>{{$thisYearOrder}}</h1>
                        <a href="{{url('admin/orders')}}">View</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection