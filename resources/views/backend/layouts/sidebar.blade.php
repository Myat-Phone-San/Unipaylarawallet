<div class="app-sidebar sidebar-shadow">
    <div class="app-header__logo">
        <div class="logo-src"></div>
        <div class="header__pane ml-auto">
            <div>
                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic"
                    data-class="closed-sidebar">
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>
            </div>
        </div>
    </div>
    <div class="app-header__mobile-menu">
        <div>
            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                </span>
            </button>
        </div>
    </div>
    <div class="app-header__menu">
        <span>
            <button type="button"
                class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                <span class="btn-icon-wrapper" >
                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                </span>
            </button>
        </span>
    </div>
    <div class="scrollbar-sidebar">
        <div class="app-sidebar__inner">
            <ul class="vertical-nav-menu">
                <li class="app-sidebar__heading">Dashboards</li>
                <li>
                    <a href="{{route('admin.home')}}" class="@yield('home-active')">
                       <div class="flex justify-content-between align-item-center">
                        <img src="{{asset('img/monitor.png')}}" alt="" style="width:20px;height:20px;position:fixed;left:40px;top:115px;">
                        <!-- <i class="metismenu-icon pe-7s-display2"></i> -->
                        Dashboard
                        </div>
                    </a>
                  
                </li>
                <li>
                    <a href="{{route('admin.admin-user.index')}}" class="@yield('admin-user-active')">
                    <div class="flex justify-content-between align-item-center">
                    <img src="{{asset('img/admin.png')}}" alt="" style="width:25px;height:25px;position:fixed;left:35px;top:150px;">
                        <!-- <i class="metismenu-icon pe-7s-users"></i> -->
                        Admin Users
                    </div>
                    </a>
                </li>
                <li>
                    <a href="{{route('admin.user.index')}}" class="@yield('user-active')">
                    <div class="flex justify-content-between align-item-center">
                    <img src="{{asset('img/user.png')}}" alt="" style="width:20px;height:20px;position:fixed;left:40px;top:190px;">
                        <!-- <i class="metismenu-icon pe-7s-users"></i> -->
                        Users
                    </div>
                    </a>
                </li>
                <li>
                    <a href="{{route('admin.wallet.index')}}" class="@yield('wallet-active')">
                    <div class="flex justify-content-between align-item-center">
                    <img src="{{asset('img/wallet.png')}}" alt="" style="width:20px;height:20px;position:fixed;left:40px;top:230px;">
                        <!-- <i class="metismenu-icon pe-7s-wallet"></i> -->
                        Wallets
                    </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
