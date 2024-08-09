@extends('backend.layouts.app')
@section('title', 'Wallets')
@section('wallet-active', 'mm-active')
@section('content')
<div class="app-page-title">
    <div class="page-title-wrapper">
        <div class="page-title-heading">
            <div class="page-title-icon">
            <img src="{{asset('img/wallet.png')}}" alt="" style="width:30px;height:30px;">
                <!-- <i class="pe-7s-wallet icon-gradient bg-mean-fruit">
                </i> -->
            </div>
            <div>Wallets</div>
        </div>
    </div>
</div>

<div class="pt-3">
    <a href="{{url("admin/wallet/add/amount")}}" class="btn btn-success"><img src="{{asset('img/add.png')}}" alt="" style="width:20px;height:20px;border:2px solid white;border-radius:50px;"> Add Amount</a>
    <a href="{{url("admin/wallet/reduce/amount")}}" class="btn btn-danger"><img src="{{asset('img/delete.png')}}" alt="" style="width:20px;height:20px;border:2px solid white;border-radius:50px;"> Reduce Amount</a>
</div>

<div class="content py-3">
    <div class="card">
        <div class="card-body">
        <div class="container">
        <div id="resize_wrapper">
            
            <table class="table table-bordered Datatable text-nowrap w-100">
                <thead>
                    <tr class="bg-light">
                        <th>Account Number</th>
                        <th>Account Person</th>
                        <th>Amount (MMK)</th>
                        <th>Created at</th>
                        <th>Updated at</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
    $(document).ready(function() {
        var table = $('.Datatable').DataTable({
            scrollResize: true,
					scrollX: true,
					scrollY: 250,
					scrollCollapse: true,
// 					paging: false,
// 					lengthChange: false
            processing: true,
            serverSide: true,
            ajax: "/admin/wallet/datatable/ssd",
            columns: [
                {
                    data: "account_number",
                    name: "account_number",
                },
                {
                    data: "account_person",
                    name: "account_person",
                },
                {
                    data: "amount",
                    name: "amount"
                },
                {
                    data: "created_at",
                    name: "created_at"
                },
                {
                    data: "updated_at",
                    name: "updated_at"
                }
            ],
            order: [
                [ 4, "desc" ]
            ],
            columnDefs: [{
                targets: "no-sort",
                sortable: false
            }]
        });
    } );
</script>
@endsection
