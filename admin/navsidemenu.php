  <!-- partial:partials/_sidebar.html -->
  <nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
      <li class="nav-item nav-category">Main</li>
      <li class="nav-item">
        <a class="nav-link" href="dashboard.php">
          <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
          <span class="menu-title">Dashboard</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
          <span class="icon-bg"><i class="mdi mdi-crosshairs-gps menu-icon"></i></span>
          <span class="menu-title">Property</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="ui-basic">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item"> <a class="nav-link" href="property-add.php">Add Property</a></li>
            <li class="nav-item"> <a class="nav-link" href="property-view.php">View Property</a></li>
            <li class="nav-item"> <a class="nav-link" href="property-boost-view.php">View Boosted Property</a></li>
          </ul>
        </div>

      </li>
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="collapse" href="#basic" aria-expanded="false" aria-controls="ui-basic">
          <span class="icon-bg"><i class="mdi mdi-crosshairs-gps menu-icon"></i></span>
          <span class="menu-title">Users</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="basic">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item"> <a class="nav-link" href="add-users.php">Add User</a></li>
            <li class="nav-item"> <a class="nav-link" href="view-users.php">View Users</a></li>
          </ul>
        </div>

      </li>
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
          <span class="icon-bg"><i class="mdi mdi-lock menu-icon"></i></span>
          <span class="menu-title">Users Transactions</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="auth">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item"> <a class="nav-link" href="subscription-view.php"> View Transactions </a></li>
          </ul>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="message-fyndah.php">
          <span class="icon-bg"><i class="mdi mdi-contacts menu-icon"></i></span>
          <span class="menu-title">Message Agents</span>
        </a>
      </li>
      <li class="nav-item sidebar-user-actions">
        <div class="user-details">
          <div class="d-flex justify-content-between align-items-center">
            <div>
              <div class="d-flex align-items-center">
                <div class="sidebar-profile-img">

                </div>
                <a class="nav-link" href="profile.php">
                  <div class="sidebar-profile-text">
                    <p class="mb-1">SUPER ADMIN</p>
                  </div>
                </a>
              </div>
            </div>

          </div>
        </div>
      </li>
      <li class="nav-item sidebar-user-actions">
        <div class="sidebar-user-menu">
          <a href="#" class="nav-link"><i class="mdi mdi-settings menu-icon"></i>
            <span class="menu-title">Settings</span>
          </a>
        </div>
      </li>
      <li class="nav-item sidebar-user-actions">
        <div class="sidebar-user-menu">
          <a href="logout.php" class="nav-link"><i class="mdi mdi-logout menu-icon"></i>
            <span class="menu-title">Log Out</span></a>
        </div>
      </li>
    </ul>
  </nav>
  <!-- partial -->
