<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>

    {{-- stylesheet --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.2.0/dist/css/adminlte.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Jost:ital,wght@0,100..900;1,100..900&family=Outfit:wght@100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/admin.css') }}">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button">
                        <i class="fas fa-bars"></i>
                    </a>
                </li>
            </ul>

            <ul class="navbar-nav ml-auto">
                <!-- User Profile -->
                <li class="nav-item d-flex align-items-center">
                    <img src="{{ asset('images/profilph.png') }}" class="img-circle mr-2" alt="User Image" style="width: 25px; height: 25px;">
                    <span class="text-dark font-weight-bold mr-4">{{ Auth::user()->name }}</span>
                    <a href="#" class="btn btn-outline-danger btn-sm mr-3" data-bs-toggle="modal" data-bs-target="#logoutModal">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>                    
                </li>                
            </ul>
        </nav>

        <!-- Sidebar -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="#" class="brand-link">
                <img src="{{ asset('images/logo-aftersunset.png') }}" alt="Brand Logo">
                <span class="brand-text font-weight-bold text-white">AfterSunset.idn</span>
            </a>

            <!-- Sidebar Menu -->
            <div class="sidebar">
                <nav class="mt-5">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item">
                            <a href="{{ route('beranda') }}" class="nav-link {{ Request::routeIs('beranda') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-home"></i>
                                <p class="text-white">Beranda</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('riwayat.index') }}" class="nav-link {{ Request::routeIs('riwayat.index') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-history"></i>
                                <p class="text-white">Riwayat</p>
                            </a>                            
                        </li>
                        @if(Auth::user()->role->name === 'Kasir')
                        <li class="nav-item">
                            <a href="{{ route('pemesanan.index') }}" class="nav-link {{ Request::routeIs('pemesanan.index') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-shopping-cart"></i>
                                <p class="text-white">Pemesanan</p>                            
                            </a>                            
                        </li>
                        @elseif(Auth::user()->role->name === 'Administrator')
                        <li class="nav-item">
                            <a href="{{ route('keuangan.index') }}" class="nav-link {{ Request::routeIs('keuangan.index') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-wallet"></i>
                                <p class="text-white">Keuangan</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('menu.index') }}" class="nav-link {{ Request::routeIs('menu.index') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-utensils"></i>
                                <p class="text-white">Menu</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('akunkasir.index') }}" class="nav-link {{ Request::routeIs('akunkasir.index') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-address-book"></i>
                                <p class="text-white">Akun Kasir</p>
                            </a>
                        </li>
                        @endif
                    </ul>
                </nav>
            </div>
        </aside>


        <!-- Content Wrapper -->
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">@yield('title')</h1>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main Content -->
            <section class="content">
                <div class="container-fluid">
                    @yield('content')
                </div>
            </section>
        </div>

        <!-- Modal Pemberitahuan -->
        @if (session('success'))
        <div class="modal fade" id="successModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Pemberitahuan</h5>
                    </div>
                    <div class="modal-body">{{ session('success') }}</div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Oke</button>
                    </div>
                </div>
            </div>
        </div>
        @endif

        <!-- Modal Logout -->
        <div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="logoutModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="logoutModalLabel">Konfirmasi Logout</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Apakah Anda yakin ingin keluar?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                        <form action="{{ route('logout') }}" method="POST">
                            @csrf
                            <button type="submit" class="btn btn-danger">Logout</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.2.0/dist/js/adminlte.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('js/admin.js') }}"></script>
</body>
</html>
