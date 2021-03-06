<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">

  <link rel="stylesheet" href="admin1.css">
  <!-- Boxicons CDN Link -->
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="sidebar">
  <div class="logo-details">
    <i class="mdi:alpha-t-box-outline"></i>
    <div class="logoName">
    <img class="image" src=freshworld1.png>
    </div>
  </div>
  <ul class="nav-links">
    <li>
      <a href="#" class="active">
        <i class='bx bx-grid-alt' ></i>
        <span class="links_name">Dashboard</span>
      </a>
    </li>
    <li>
      <div class="add_img">
      <a href="#">
        <img class="addingLogo" src="add_products_logo.jpg">
        <span class="links_name">Add Products</span>
      </a>
        </div>
    </li>
    <li>
      <a href="#">
        <i class='bx bx-pie-chart-alt-2' ></i>
        <span class="links_name">Remove Products</span>
      </a>
    </li>
    <li>
      <div class="log_img">
      <a href="#">
        <img class="logout_img" src="profilelogo.jpg">
        <span class="links_name">Log out</span>
      </a>
      </div>
    </li>
  </ul>
</div>
<section class="home-section">
  <nav>
    <div class="sidebar-button">
      <i class='bx bx-menu sidebarBtn'></i>
      <span class="dashboard">Dashboard</span>
    </div>


  </nav>

  <div class="home-content">
    <div class="overview-boxes">
      <div class="box">
        <div class="right-side">
          <div class="box-topic">Total Orders</div>
          <div class="number">25</div>
          <div class="indicator">
            <i class='bx bx-up-arrow-alt'></i>
            <span class="text">Up from yesterday</span>
          </div>
        </div>
        <i class='bx bx-cart-alt cart'></i>
      </div>

    </div>

    <div class="sales-boxes">
      <div class="recent-sales box">
        <div class="title">Recent Orders</div>
        <div class="sales-details">
          <ul class="details">
            <li class="topic">Date</li>
            <li><a href="#">07 dec 2021</a></li>
            <li><a href="#">07 dec 2021</a></li>
            <li><a href="#">06 dec 2021</a></li>
            <li><a href="#">05 dec 2021</a></li>
            <li><a href="#">05 dec 2021</a></li>
          </ul>

          <ul class="details">
            <li class="topic">Order Status</li>
            <li><a href="#">Delivered</a></li>
            <li><a href="#">Pending</a></li>
            <li><a href="#">Returned</a></li>
            <li><a href="#">Delivered</a></li>
            <li><a href="#">Pending</a></li>

          </ul>
          <ul class="details">
            <li class="topic">Total Order Price</li>
            <li><a href="#">1200 </a></li>
            <li><a href="#">700</a></li>
            <li><a href="#">560</a></li>
            <li><a href="#">850</a></li>
            <li><a href="#">900</a></li>


          </ul>
        </div>
        <div class="button">
          <a href="#">See All</a>
        </div>
      </div>

    </div>
</section>

<script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>