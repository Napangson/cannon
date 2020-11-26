<?php
	@session_start();
?>
<?php
	include("connectdb.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>CANON</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- site icons -->
<link rel="icon" href="images/fevicon/camera.png" type="image/gif" />
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Site css -->
<link rel="stylesheet" href="css/style.css" />
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css" />
<!-- colors css -->
<link rel="stylesheet" href="css/colors2.css" />
<!-- custom css -->
<link rel="stylesheet" href="css/custom.css" />
<!-- wow Animation css -->
<link rel="stylesheet" href="css/animate.css" />
<!-- revolution slider css -->
<link rel="stylesheet" type="text/css" href="revolution/css/settings.css" />
<link rel="stylesheet" type="text/css" href="revolution/css/layers.css" />
<link rel="stylesheet" type="text/css" href="revolution/css/navigation.css" />
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<body id="default_theme" class="it_service">
<!-- loader -->
<div class="bg_load"> <img class="loader_animation" src="images/loaders/loader.png" alt="#" /> </div>
<!-- end loader -->
<!-- header -->
<header id="default_header" class="header_style_1">
  <!-- header top -->
  <div class="header_top">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="full">
            <div class="topbar-left">
              <ul class="list-inline">
                <li> <span class="topbar-label"><i class="fa  fa-home"></i></span> <span class="topbar-hightlight">อาคารสาทร สแควร์ ออฟฟิศ ทาวเวอร์ ชั้น 21-24 98 กรุงเทพมหานคร</span> </li>
                <li> <span class="topbar-label"><i class="fa fa-envelope-o"></i></span> <span class="topbar-hightlight"><a href="mailto:info@yourdomain.com">canon.thailand@yourdomain.com</a></span> </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-4 right_section_header_top">
          <div class="float-left">
            <div class="social_icon">
              <ul class="list-inline">
                <li><a class="fa fa-facebook" href="https://www.facebook.com/canon.thailand/" title="Facebook" target="_blank"></a></li>
                <li><a class="fa fa-youtube" href="https://www.youtube.com/user/canonthailand" title="Youtube" target="_blank"></a></li>
                <li><a class="fa fa-linkedin" href="https://www.linkedin.com/authwall?trk=ripf&trkInfo=AQFQnz8oxb15cQAAAXXhUHG4uUSdwQrbOO1kXAbW9o4F_lbTMsjaplrduSWCLoXhzz3ipyyET5hwS0wpy346B7BXx_Pt4s62yyokvhZbjEJ8pwKmiGvwyv367lN3MPJUFME_NYo=&originalReferer=https://th.canon/&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2Fcanon-marketing-thailand-co-ltd" title="LinkedIn" target="_blank"></a></li>
                <li><a class="fa fa-instagram" href="https://www.instagram.com/Canon_Thailand/" title="Instagram" target="_blank"></a></li>
              </ul>
            </div>
          </div>
          <div class="float-right">
            <div class="make_appo"> <a class="btn white_btn" href="contact.php">ติดต่อสอบถาม</a> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end header top -->
  <!-- header bottom -->
  <div class="header_bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
          <!-- logo start -->
          <div class="logo"> <a href="index.php"><img src="images/logos/logo.png" alt="logo" /></a> </div>
          <!-- logo end -->
        </div>
        <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
          <!-- menu start -->
          <div class="menu_side">
            <div id="navbar_menu">
              <ul class="first-ul">
                <li> <a href="index2.php?pt=1">CAMERA</a>
                </li>
                <li> <a href="index2.php?pt=2">PRINTER</a>
                </li>
                <li> <a href="index2.php?pt=3">VIDEO CAMERA</a>
                </li>
                <li> <a href="index2.php?pt=4">PROJECTOR</a>
                </li>
                <li> <a href="cart.php">ชำระสินค้า</a>
                </li>
                <?php
    	if (isset($_SESSION['mid'])){
	?>
    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="logout.php">ออกจากระบบ</a></li>
    <?php } else { ?>
	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="login.php">LOGIN</a></li>
    <?php } ?>
              </ul>
            </div>
            </div>
          </div>
          <!-- menu end -->
        </div>
      </div>
    </div>
  </div>
  <!-- header bottom end -->
</header>
<!-- end header -->












<!-- start contact section -->
   <br><br>
   <div class="container">
     <div class="row">
       <div class="col-md-12">
          <!-- สมัคสมาชิก -->
             <div class="row">
               <div class="col-md-7">
                 <center><h3>สมัครสมาชิก</h3></center>
                   <form class="row-cols-7" action="" method="post">
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <input type="text" name="user" placeholder="Username" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-5">
                        <div class="form-group">
                          <input type="password" name="password" placeholder="password" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-5">
                        <div class="form-group">
                          <input type="text" name="name" placeholder="ชื่อ นามสกุล" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-5">
                        <div class="form-group">
                          <input type="text" name="tol" placeholder="เบอร์โทร" class="form-control">
                        </div>
                      </div>
                    <div class="col-md-10">
                    <div class="form-group">
                      <textarea class="form-control" name="address" rows="4" placeholder="ที่อยู่"></textarea>
                    </div>
                    <button type="submit" name="Submit" class="btn btn-info">สมัครสมาชิก</button>
                  </form>
                 </div>
                 </div>
                 </div>

             <!-- สมัคสมาชิก -->
             <div class="col-md-4">
                 <center><h3>เข้าสู่ระบบ</h3></center>
                   <form class="row-cols-8" action="login.php" method="post">
                      <div class="col-md-10">
                        <div class="form-group">
                          <input type="text" name="user" placeholder="Username" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-10">
                        <div class="form-group">
                          <input type="password" name="password" placeholder="password" class="form-control">
                        </div>
                    <button type="submit" name="Submit2" class="btn btn-success">เข้าสู่ระบบ</button>
                  </form>
                 </div>
               </div>
               </div>
               </div>
               </div>
               </div>
               </section>
<?php
if (isset($_POST['Submit'])){
include('config/config.php');
  $use = $_POST['user'];
  $pas = $_POST['password'];
  $nme = $_POST['name'];
  $toll = $_POST['tol'];
  $adds = $_POST['address'];

  $str = "INSERT INTO member VALUES('','$use','$pas','$nme','$toll','$adds')";
  mysqli_query($link,$str);

  echo "<script>
    window.location='login.php';
    </script>";
}
 ?>
 <?php
if(isset($_POST['Submit2'])){
	include('config/config.php');//เชื่อมต่อdatabase
	$sql = "select * from member where muser='".$_POST['user']."' and mpassword='".($_POST['password'])."' limit 1";//เช็คข้อมูลในdatabase
	//var_dump($sql);exit;
	$rs = mysqli_query($link, $sql);
	$num = mysqli_num_rows($rs);//คำสั่งนับselectว่าตรงกันหรือไม่

	if ($num == 1){//ถ้าเป็น1แสดงถูก
		$data = mysqli_fetch_array($rs);
		$_SESSION['mid'] = $data['mid'];
		$_SESSION['mname'] = $data['mname'];
		echo "<script>";
		echo "window.location='index.php';";//loginถูกจะโชว์หน้าหนังสือ
		echo "</script>";
	} else {//ถ้าไม่ถูกจะเข้าเงื่อนไขนี้
		echo "<script>";
		echo "alert('Username หรือ Password ไม่ถูกต้อง');";
		echo "</script>";
		exit;
	}
}
?>
</div>
</div>
</div>
</div>








<!-- Modal -->
<div class="modal fade" id="search_bar" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><i class="fa fa-close"></i></button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-lg-8 col-md-8 col-sm-8 offset-lg-2 offset-md-2 offset-sm-2 col-xs-10 col-xs-offset-1">
            <div class="navbar-search">
              <form action="#" method="get" id="search-global-form" class="search-global">
                <input type="text" placeholder="Type to search" autocomplete="off" name="s" id="search" value="" class="search-global__input">
                <button class="search-global__btn"><i class="fa fa-search"></i></button>
                <div class="search-global__note">Begin typing your search above and press return to search.</div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Model search bar -->
<!-- js section -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- menu js -->
<script src="js/menumaker.js"></script>
<!-- wow animation -->
<script src="js/wow.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
<!-- revolution js files -->
<script src="revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.video.min.js"></script>
<!-- map js -->
<script>
         // This example adds a marker to indicate the position of Bondi Beach in Sydney,
         // Australia.
         function initMap() {
           var map = new google.maps.Map(document.getElementById('map'), {
             zoom: 11,
             center: {lat: 40.645037, lng: -73.880224},
         styles: [
                  {
                    elementType: 'geometry',
                    stylers: [{color: '#fefefe'}]
                  },
                  {
                    elementType: 'labels.icon',
                    stylers: [{visibility: 'off'}]
                  },
                  {
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#616161'}]
                  },
                  {
                    elementType: 'labels.text.stroke',
                    stylers: [{color: '#f5f5f5'}]
                  },
                  {
                    featureType: 'administrative.land_parcel',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#bdbdbd'}]
                  },
                  {
                    featureType: 'poi',
                    elementType: 'geometry',
                    stylers: [{color: '#eeeeee'}]
                  },
                  {
                    featureType: 'poi',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#757575'}]
                  },
                  {
                    featureType: 'poi.park',
                    elementType: 'geometry',
                    stylers: [{color: '#e5e5e5'}]
                  },
                  {
                    featureType: 'poi.park',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#9e9e9e'}]
                  },
                  {
                    featureType: 'road',
                    elementType: 'geometry',
                    stylers: [{color: '#eee'}]
                  },
                  {
                    featureType: 'road.arterial',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#3d3523'}]
                  },
                  {
                    featureType: 'road.highway',
                    elementType: 'geometry',
                    stylers: [{color: '#eee'}]
                  },
                  {
                    featureType: 'road.highway',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#616161'}]
                  },
                  {
                    featureType: 'road.local',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#9e9e9e'}]
                  },
                  {
                    featureType: 'transit.line',
                    elementType: 'geometry',
                    stylers: [{color: '#e5e5e5'}]
                  },
                  {
                    featureType: 'transit.station',
                    elementType: 'geometry',
                    stylers: [{color: '#000'}]
                  },
                  {
                    featureType: 'water',
                    elementType: 'geometry',
                    stylers: [{color: '#c8d7d4'}]
                  },
                  {
                    featureType: 'water',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#b1a481'}]
                  }
                ]
         });
         
           var image = 'images/it_service/location_icon_map_cont.png';
           var beachMarker = new google.maps.Marker({
             position: {lat: 40.645037, lng: -73.880224},
             map: map,
             icon: image
           });
         }
      </script>
</body>
</html>
