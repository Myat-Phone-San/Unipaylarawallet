@extends('backend.layouts.app')
@section('title', 'Dashboard')
@section('home-active', 'mm-active')
@section('content')
<div class="app-page-title">
    <div class="page-title-wrapper">
        <div class="page-title-heading">
            <div class="page-title-icon">
                <i class="pe-7s-display2 icon-gradient bg-mean-fruit">
                </i>
            </div>
            <div>Dashboard</div>
        </div>
    </div>
</div>


<div class="row">
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-primary">
                                    <div class="widget-content-wrapper text-white justify-content-center">
                                        <div class="widget-content-left">
                                            <div class="widget mx-3"><h4 class="text-white"> Admin Users -</h4></div>
                                         
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><h2>{{$totalAdminUsers}}</h2></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-success">
                                    <div class="widget-content-wrapper text-white">
                                    <div class="widget-content-left">
                                            <div class="widget mx-3"><h4 class="text-white">Users -</h4></div>
                                         
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><h2>{{$totalUsers}}</h2></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-danger">
                                    <div class="widget-content-wrapper text-white">
                                    <div class="widget-content-left">
                                            <div class="widget mx-3"><h4 class="text-white"> Wallet -</h4></div>
                                         
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><h2>{{$totalWallet}}</h2></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                        <div class="container">
        <h5>Admin & Users Chart</h5>
        <canvas id="userChart" width="400" height="130"></canvas>
    </div>

                        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                        <script>
        var ctx = document.getElementById('userChart').getContext('2d');
        var userChart = new Chart(ctx, {
            type: 'bar', // or 'line', 'pie', etc.
            data: {
                labels: ['Total Users', 'Admin Users'],
                datasets: [{
                    label: 'User Counts',
                    data: [{{ $totalUsers }}, {{ $totalAdminUsers }}],
                    backgroundColor: [
                        'rgba(70, 10, 243, 0.8)',
                        'rgba(10, 46, 243, 0.8)'
                    ],
                    borderColor: [
                        'black',
                        'black'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
@endsection
