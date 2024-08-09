@extends('frontend.layouts.app')
@section('title', 'UniPay')
@section('content')
<div class="home">
    <div class="row home-card">
        <div class="col-12">
            <div class="profile mb-3">
                <img src="https://ui-avatars.com/api/?background=fff&color=5842E3&name={{$user->name}}" alt="">
                <h6>{{$user->name}}</h6>
                <p class="text-muted">{{$user->wallet ? number_format($user->wallet->amount) : 0}} MMK</p>
            </div>
        </div>

    
        <div class="col-6">
            <a href="{{url('scan-and-pay')}}">
                <div class="card shortcut-box mb-3">
                    <div class="card-body p-2">
                        <img src="{{asset('img/qr-code-scan.png')}}" alt="">
                        <span>Scan & Pay</span>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-6">
            <a href="{{url('receive-qr')}}">
                <div class="card shortcut-box mb-3">
                    <div class="card-body p-2">
                        <img src="{{asset('img/qr.png')}}" alt="">
                        <span>Receive QR</span>
                    </div>
                </div>
            </a>
        </div>

      

        <div class="col-12">
            <div class="card mb-3 function-box">
                <div class="card-body pr-0">
                    <a href="{{url('transfer')}}" class="d-flex justify-content-between">
                        <span><img src="{{asset('img/money-transfer.png')}}" alt=""> Transfer</span>
                        <span class="mr-1"><img src="{{asset('img/angle-small-right.png')}}" alt="" style="width: 18px; height: 18px;"></span>
                    </a>
                    <hr>
                    <a href="{{url('wallet')}}" class="d-flex justify-content-between">
                        <span><img src="{{asset('img/wallet.png')}}" alt=""> Wallet</span>
                        <!-- <span class="mr-3"><i class="fas fa-angle-right"></i></span> -->
                        <span class="mr-1"><img src="{{asset('img/angle-small-right.png')}}" alt="" style="width: 18px; height: 18px;"></span>
                    </a>
                    <hr>
                    <a href="{{url('transaction')}}" class="d-flex justify-content-between">
                        <span><img src="{{asset('img/transaction.png')}}" alt=""> Transaction</span>
                        <span class="mr-1"><img src="{{asset('img/angle-small-right.png')}}" alt="" style="width: 18px; height: 18px;"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
