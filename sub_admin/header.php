<body>
  <div class="container-scroller">

    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" style="
    background: rgb(2,1,41);
background: radial-gradient(circle, rgba(2,1,41,1) 0%, rgba(33,9,121,1) 40%, rgba(9,121,90,1) 79%);">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="dashboard.php"><img src="../img/logos/logo.png" alt="logo" /></a>
        <a class="navbar-brand brand-logo-mini" href="dashboard.php"><img src="../img/logos/logo.png" alt="logo" /></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="mdi mdi-menu"></span>
        </button>
        <div class="search-field d-none d-xl-block">
          <form class="d-flex align-items-center h-100" action="#">
            <div class="input-group">
              <div class="input-group-prepend bg-transparent">
                <i class="input-group-text border-0 mdi mdi-magnify"></i>
              </div>
              <input type="text" class="form-control bg-transparent border-0" placeholder="Search products">
            </div>
          </form>
        </div>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-language dropdown d-none d-md-block">
            <a class="nav-link dropdown-toggle" id="languageDropdown" href="#" data-bs-toggle="dropdown"
              aria-expanded="false">
              <div class="nav-language-icon">
                <i class="flag-icon flag-icon-us" title="us" id="us"></i>
              </div>
              <div class="nav-language-text">
                <p class="mb-1 text-black">English</p>
              </div>
            </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="languageDropdown">
              <a class="dropdown-item" href="#">
                <div class="nav-language-icon me-2">
                  <i class="flag-icon flag-icon-ae" title="ae" id="ae"></i>
                </div>
                <div class="nav-language-text">
                  <p class="mb-1 text-black">Arabic</p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">
                <div class="nav-language-icon me-2">
                  <i class="flag-icon flag-icon-gb" title="GB" id="gb"></i>
                </div>
                <div class="nav-language-text">
                  <p class="mb-1 text-black">English</p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown"
              aria-expanded="false">
              <div class="nav-profile-img">
                <img src="">
              </div>
              <div class="nav-profile-text">
                <p class="mb-1 text-black"><?php echo $_SESSION['name'];?></p>
              </div>
            </a>
            <div class="dropdown-menu navbar-dropdown dropdown-menu-right p-0 border-0 font-size-sm"
              aria-labelledby="profileDropdown" data-x-placement="bottom-end">
              <div class="p-3 text-center bg-primary">
                <img src="">
              </div>
              <div class="p-2">
                <h5 class="dropdown-header text-uppercase ps-2 text-dark">User Options</h5>
                <a class="dropdown-item py-1 d-flex align-items-center justify-content-between" href="#">
                  <span>Inbox</span>
                  <span class="p-0">
                    <span class="badge badge-primary"></span>
                    <i class="mdi mdi-email-open-outline ms-1"></i>
                  </span>
                </a>
                <a class="dropdown-item py-1 d-flex align-items-center justify-content-between" href="profile.php">
                  <span>Profile</span>
                  <span class="p-0">
                    <span class="badge badge-success"></span>
                    <i class="mdi mdi-account-outline ms-1"></i>
                  </span>
                </a>
                <a class="dropdown-item py-1 d-flex align-items-center justify-content-between"
                  href="javascript:void(0)">
                  <span>Settings</span>
                  <i class="mdi mdi-settings"></i>
                </a>
                <div role="separator" class="dropdown-divider"></div>
                <h5 class="dropdown-header text-uppercase  ps-2 text-dark mt-2">Actions</h5>
                <a class="dropdown-item py-1 d-flex align-items-center justify-content-between" href="#">
                  <span>Lock Account</span>
                  <i class="mdi mdi-lock ms-1"></i>
                </a>
                <a class="dropdown-item py-1 d-flex align-items-center justify-content-between" href="logout.php">
                  <span>Log Out</span>
                  <i class="mdi mdi-logout ms-1"></i>
                </a>
              </div>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-bs-toggle="dropdown"
              aria-expanded="false">
              <i class="mdi mdi-email-outline"></i>
              <span class="count-symbol bg-success"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-end navbar-dropdown preview-list" aria-labelledby="messageDropdown">
              <h6 class="p-3 mb-0 bg-primary text-white py-4">Messages</h6>
              <div class="dropdown-divider"></div>

              <div class="dropdown-divider"></div>
              <h6 class="p-3 mb-0 text-center"> </h6>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#"
              data-bs-toggle="dropdown">
              <i class="mdi mdi-bell-outline"></i>
              <span class="count-symbol bg-danger"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-end navbar-dropdown preview-list"
              aria-labelledby="notificationDropdown">
              <h6 class="p-3 mb-0 bg-primary text-white py-4">Notifications</h6>
              <div class="dropdown-divider"></div>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
          data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
