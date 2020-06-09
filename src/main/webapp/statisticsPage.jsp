<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Criteria Statistics</title>

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">
  <script src="../js/echarts.min.js"></script>
    <style type="text/css">
    <style>
.job-hot {
	position: absolute;
	color: #d9534f;
	right: 0;
	top: 15px;
}
.foot-wrap{
	background-color: #f5f5f5;
}

.eliback {
	color: white;
	background-color: #1E90FF;
	position: relative;
}

.navback {
	background-color: #16CDD4;
	color: white;
}
    </style>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <!-- <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          Sidebar Toggle (Topbar)
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          Topbar Search
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>
       
        </nav> -->
        <div class="navbar navbar-inverse navbar-fixed-top navback">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand hidden-sm" href="../"
					style="color: white"
					onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'navbar-mainpage'])">Clinical Trial Knowledge Base</a>
			</div>
			<div class="navbar-collapse collapse" role="navigation">
				<ul class="nav navbar-nav">

				</ul>
				<ul class="nav navbar-nav navbar-right hidden-sm">
					<li><a style="color: white" data-toggle="modal"
						data-target="#myModal">About</a></li>
				</ul>
			</div>
		</div>
	</div>
        <!-- End of Topbar -->
<div class="container projects">
        <!-- Begin Page Content -->
        <div class="col-sm-12 col-md-12 col-lg-12" style="margin-top: 20px">
          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800"><span id="term">Overall</span></h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Download Report</a>
          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><span id="totalp">180,213</span></div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-align-justify fa-2x text-gray-300"></i>                
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Inclusion Criteria</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><span id="inccount">180,213</span></div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-check fa-2x text-gray-300"></i>
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
 			<!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-danger shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Exclusion Criteria</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><span id="exccount">180,213</span></div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-exclamation fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Top Criteria</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">73%</div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 73%" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

           
          </div>

          <!-- Content Row -->

          <div class="row">
            <!-- Area Chart -->
            <!--  <div class="col-xl-8 col-lg-7"> -->
            <div class="col-xl-6 col-lg-6">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Range Distribution</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div id="box" class="chart-area">
                   <!--  <canvas id="myAreaChart"></canvas> -->
                  </div>
                </div>
              </div>
            </div>

            <!-- Pie Chart -->
            <div class="col-xl-6 col-lg-6">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Phase Distribution</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                   <div id="box2" class="chart-area">
                   </div>       
                </div>
              </div>
            </div>
            
            
          </div>

          <!-- Content Row -->
          <div class="row">
            <!-- Content Column -->
            <div class="col-lg-6 mb-4">

              <!-- Project Card Example -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Related Criteria</h6>
                </div>
                <div class="card-body">
                  <h4 class="small font-weight-bold">PREGNANT <span class="float-right">80%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">ECOG performance status grade Observed <span class="float-right">60%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  
                  <h4 class="small font-weight-bold">Hypersensitivity <span class="float-right">40%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-warning" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  
                  <h4 class="small font-weight-bold">ABSOLUTE NEUTROPHIL COUNT <span class="float-right">20%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>


                  
                </div>
              </div>        
            </div>

            <div class="col-lg-6 mb-4">
             <!-- Approach -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Example Criteria</h6>
                </div>
                <div class="card-body">
                  <li>BMI: 28-35 </li>
                  <li>Body Mass Index ≥18.5 kg/m2 and ≤29.9 kg/m2</li>
                  <li>BMI is ≥ 18 to < 38 kg/m2</li>
                  <li>Have a body mass index of >18 and <30kg.m2 </li>
                  <li>Must have a body-mass index (BMI) between 18 and 30 kg/m2 (inclusive)</li>
                </div>
              </div>

            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->
</div>
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="../vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
 <!--  <script src="../js/demo/chart-area-demo.js"></script> -->
  <script src="../js/demo/chart-pie-demo.js"></script>
<script>
var basePath = "../";
$(function() {
	$.ajax({
		type : 'POST',
		url : basePath + "criteria/loadData",//nlpmethod/parsebycdm
		data : {},
		dataType : "json",
		success : function(data) {
			$("#term").html(data['ccName']);
			$("#inccount").html(data['inccount']);
			$("#exccount").html(data['exccount']);
		}
	})
		
    var myChart = echarts.init(document.getElementById("box"), 'light');
    option = {
    	    xAxis: {
    	        type: 'category',
    	        data: ['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66']
    	  },
    	    yAxis: {
    	        type: 'value'
    	    },
    	    series: [{
    	        data: [4377,4771,5011,5015,5022,5070,5088,5092,5089,5093,5128,5117,5119,5118,5126,5230,5267,5379,9266,11769,12586,12593,12718,12894,12948,14189,13378,13731,13447,13081,13460,10276,10185,9165,8969,9236,7310,7212,7155,6997,7106,5596,5582,5504,5473,5580,4934,4931,4934,4924,5813,5602,5601,5599,5598,5643,5587,5587,5587,5587,5625,5579,5580,5579,5580,5590,5568]
    	,        type: 'line',
    	        smooth: true
    	    }]
    };
    myChart.setOption(option);
    
    var myChart2 = echarts.init(document.getElementById("box2"), 'light');
    option2 = {
    	    tooltip: {
    	        trigger: 'item',
    	        formatter: "{a} <br/>{b}: {c} ({d}%)"
    	    },
    	    legend: {
    	        orient: 'vertical',
    	        x: 'left',
    	        data:['Phrase_1','Phrase_2','Phrase_3','Phrase_4']
    	    },
    	    series: [
    	        {
    	            name:'Phase',
    	            type:'pie',
    	            radius: ['50%', '70%'],
    	            avoidLabelOverlap: false,
    	            label: {
    	                normal: {
    	                    show: false,
    	                    position: 'center'
    	                },
    	                emphasis: {
    	                    show: true,
    	                    textStyle: {
    	                        fontSize: '30',
    	                        fontWeight: 'bold'
    	                    }
    	                }
    	            },
    	            labelLine: {
    	                normal: {
    	                    show: false
    	                }
    	            },
    	            data:[
    	                {value:335, name:'Phase_1'},
    	                {value:310, name:'Phase_2'},
    	                {value:234, name:'Phase_3'},
    	                {value:135, name:'Phase_4'} 
    	            ]
    	        }
    	    ]
    	};
    myChart2.setOption(option2);
    var echartsPie;
	echartsPie = echarts.init(document.getElementById('box3'));
	echartsPie.setOption(option2);

});
    
</script>
</body>

</html>

