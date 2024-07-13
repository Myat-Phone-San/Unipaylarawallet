<?php

namespace App\Http\Controllers\Backend;

use App\User;
use App\AdminUser;
use App\Transaction;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Wallet;

class PageController extends Controller
{
    public function home(){
        $totalAdminUsers = AdminUser::count(); 
        $totalUsers = User::count(); 
        $totalWallet = Wallet::count();
        return view('backend.home', compact('totalUsers', 'totalAdminUsers', 'totalWallet'));

    }
}
