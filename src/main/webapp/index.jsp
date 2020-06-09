<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<script type="text/javascript" src="js/plugins/d3/d3.v3.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery/jquery-1.9.1.js"></script>
<link rel="stylesheet" href="css/demo.css" />
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/dashboard.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap-table.min.css">
<link rel="stylesheet" href="css/AdminLTE.min.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="js/ie-emulation-modes-warning.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/jquery.blockUI.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>
<script src="js/bootstrap-table.min.js"></script>
<script src="js/js2wordcloud.min.js"></script>
</head>
<body style="background-color: #000000;">
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid" >
			<div class="navbar-header">
				<a class="navbar-brand" href="#">SARS-CoV-2 & COVID-19 Research Tracker</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">About</a></li>
				</ul>

			</div>
		</div>
	</nav>
	<div class="container-fluid" style="margin: 0px; padding: 0px;">
		<div class="row-fluid" style="margin: 0px; padding: 0px;">
			<div class="col-xs-12 col-md-9 col-lg-9"
				style="margin: 0px; padding: 0px; background-color: #000000;">
				<div class="box"
					style="margin-left: 0px; margin-top: 0px; padding: 0px; background-color: #000000;">
					<!-- /.box-header -->
					<div id="cgraph" class="box-body">
						<!-- /.row -->
					</div>
					<!-- ./box-body -->
				</div>
			</div>

			<div class="col-xs-12 col-md-3 col-lg-3"
				style="margin: 0px; background-color: #000000;">
				<div class="box"
					style="margin: 0px; padding: 0px; background-color: #000000;">
					<div class="box-header">
						<h3 class="box-title" style="color: white;">Daily Statistics</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<!-- /.col -->
							<div class="col-sm-6 col-xs-6">
								<div class="description-block border-right">
									<!-- <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span> -->
									<h3 class="box-title" style="color: red;">5,513</h3>
									<span class="description-text" style="color: white;">TOTAL
										NUMBER</span>
								</div>
								<!-- /.description-block -->
							</div>
							<!-- /.col -->
							<div class="col-sm-6 col-xs-6">
								<div class="description-block">
									<!-- <span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span> -->
									<h3 class="box-title" style="color: green;">207</h3>
									<span class="description-text" style="color: white;">NEW
										RELEASED</span>
								</div>
								<!-- /.description-block -->
							</div>
						</div>
						<!-- /.row -->
					</div>
					<!-- ./box-body -->
					<!-- /.box-footer -->
				</div>
				<form id="formSearch" class="form-horizontal">
					<div class="form-group" style="margin-top: 15px">
						<!-- <label class="control-label col-sm-2" for="txt_search_departmentname">PMCID</label> -->
						<div class="col-sm-8">
							<input type="text" class="form-control"
								id="kwsearch">
						</div>
						<div class="col-sm-4" style="text-align: left;">
							<button type="button" id="search" style="margin-left: 10px" id="btn_query"
								class="btn">Search</button>
						</div>
					</div>
				</form>
				<a href="#"><span class="label label-default" onclick="labelclick('General Info')">General Info</span></a>
						<a href="#"><span class="label label-primary" onclick="labelclick('Prevention')">Prevention</span></a>
						<a href="#"><span class="label label-success" onclick="labelclick('Mechanism')">Mechanism</span></a>
						<a href="#"><span class="label label-info" onclick="labelclick('Transmission')">Transmission</span></a>
						<a href="#"><span class="label label-warning" onclick="labelclick('Diagnosis')">Diagnosis</span></a>
						<a href="#"><span class="label label-danger" onclick="labelclick('Treatment')">Treatment</span></a>
						<a href="#"><span class="label" style="background-color:purple" onclick="labelclick('Case Report')">Case Report</span></a>
						<a href="#"><span class="label" style="background-color:#FF0099" onclick="labelclick('Epidemic Forecasting')">Epidemic Forecasting</span></a>
				<div class="box" style="background-color: #000000;">
					<div class="box-header">
						<!-- <h3 class="box-title" style="color: white;">Selected
							Publications</h3> -->
					</div>
					<!-- /.box-header -->
					<div class="box-body" >
						<div class="row">
						
						<div id="wordcloud" style="height: 450px;"></div>
							<!-- /.col -->
							<!--  
							<div class="basic-list-group" style="background-color: #000000;">
								<div class="list-group" style="background-color: #000000;">
									<a href="#"
										class="list-group-item list-group-item-action flex-column align-items-start" style="background-color: #000000; color: white;">
										<h5 class="description-percentage">A Novel Coronavirus from Patients with Pneumonia in China, 2019</h5> 
										<small>N Engl J Med</small>
									</a> <a href="#"
										class="list-group-item list-group-item-action flex-column align-items-start" style="background-color: #000000; color: white;">
										<h5 class="description-percentage">Epidemiological and clinical characteristics of 99 cases of 2019 novel coronavirus pneumonia in Wuhan, China: a descriptive study</h5>
										<small>Lancet</small>
									</a> <a href="#"
										class="list-group-item list-group-item-action flex-column align-items-start" style="background-color: #000000; color: white;">
										<h5 class="description-percentage">A pneumonia outbreak associated with a new coronavirus of probable bat origin</h5> 
										<small>Nature</small>
									</a>
									<a href="#"
										class="list-group-item list-group-item-action flex-column align-items-start" style="background-color: #000000; color: white;">
										<h5 class="description-percentage">First Case of 2019 Novel Coronavirus in the United States</h5>
										<small>N Engl J Med</small>
									</a>
									<a href="#"
										class="list-group-item list-group-item-action flex-column align-items-start" style="background-color: #000000; color: white;">
										<h5 class="description-percentage">Remdesivir and chloroquine effectively inhibit the recently emerged novel coronavirus (2019-nCoV) in vitro</h5> 
											<small>Cell Res</small>
									</a>
									<a href="#"
										class="list-group-item list-group-item-action flex-column align-items-start" style="background-color: #000000; color: white;">
										<h5 class="description-percentage">Early Transmission Dynamics in Wuhan, China, of Novel Coronavirus–Infected</h5>
										<small>N Engl J Med</small>
									</a>
								</div>
							</div>
						</div>
						-->
						<!-- /.row -->
					</div>
					
					<!-- ./box-body -->
				</div>
			</div>

		</div>
	</div>
	<script type="text/javascript">
	$(function() {
		d3init("./main/test2");//./main/query../js/data/data2.json
		var wc = new Js2WordCloud(document.getElementById('wordcloud'))
		wc.setOption({
		    tooltip: {
		        show: true
		    },
		    list: [
		    	['Outbreak', 6],
		    	['China', 4],
		    	['Travel', 4],
		    	['SARS', 3], 
		    	['Epidemic', 3],
		    	['Forecasting', 3],
		    	['Mathematical model', 3],
		    	['Quarantine', 3],
		    	['Importation', 3],//characteristic of virus
		    	['Basic Reproduction Number', 2],
		    	['Asymptomatic', 2],
		    	['Real-time Forecasts', 2],
		    	['Reproduction number', 2],
		    	['Google Trends', 2],
		    	['Virus', 2],
		    	['Statistical Estimation', 2],
		    	['Migration', 2],
		    	['Children', 1],
		    ],
		    color: '#15a4fa',
		    backgroundColor: '#00000',
		    click(item, dimension, event) {
		    		wordcloudclick(item[0]);
	        }
		})
		$("#search").click(function() {
			var kwsearch=$("#kwsearch").val();
			alert(kwsearch);
			$.blockUI({
				message : '<h3><img src=./img/squares.gif> Data Loading...</h3>',
				css : {
					border : '1px solid khaki'
				}
			});
			$.ajax({
				type : 'POST',
				url : "./main/search",
				data : {
					'searchTxt' : kwsearch
				},
				dataType : "json",
				success : function(data) {
					$(document).ajaxStop($.unblockUI);
					 alert("Success!");
					 //d3init("./main/test2");
					 //window.location.reload();
					 d3init(data);
				},
				error : function() {
		
				}
			});
		});
	});
	function wordcloudclick(word){
		alert(word);
	}
	
	// ** Update data section (Called from the onclick)
	function updateData(newdata) {
	    // Get the data again
	    d3.json(newdata, function(error, data) {
	       	data.forEach(function(d) {
		    	d.date = parseDate(d.date);
		    	d.close = +d.close;
		    });

	    	// Scale the range of the data again 
	    	x.domain(d3.extent(data, function(d) { return d.date; }));
		    y.domain([0, d3.max(data, function(d) { return d.close; })]);

	    // Select the section we want to apply our changes to
	    var svg = d3.select("#cgraph").transition();
	    // Make the changes
	        svg.select(".line")   // change the line
	            .duration(750)
	            .attr("d", valueline(data));
	        svg.select(".x.axis") // change the x axis
	            .duration(750)
	            .call(xAxis);
	        svg.select(".y.axis") // change the y axis
	            .duration(750)
	            .call(yAxis);

	    });
	}
	//------
	function labelclick(label){
		alert(label);
	}
	function d3init(jsondata){
        d3.json(jsondata, function(json) {
            function GroupExplorer(wrapper,config){
                var defaultConfig={
                    data:{"nodes":[],"links":[]},
                    width:$("#cgraph").width(),
                    height:window.innerHeight-50,
                    distance:200
                };
                $.extend(true,defaultConfig,config);
                defaultConfig.data.links.forEach(function (e) {
                    if(typeof e.source!="number"&&typeof e.target!="number"){
                        var sourceNode = defaultConfig.data.nodes.filter(function (n) {
                                    return n.name === e.source;
                                })[0],
                                targetNode = defaultConfig.data.nodes.filter(function (n) {
                                    return n.name === e.target;
                                })[0];
                        e.source = sourceNode;
                        e.target = targetNode;
                    }
                });
                var _this=this,highlighted=null,dependsNode=[],dependsLinkAndText=[];
                this.color = d3.scale.category20();
                var zoom = d3.behavior.zoom()
                        .scaleExtent([0.1,10])//[0.2,10]
                        .on("zoom",function(){
                        		_this.zoomed();//
                        });
                
                //zoom.translate(450,200);
               // zoom.scale(0.3);
               var sys_scale=0.3;
               var sys_transform=[500,213]
                this.vis = d3.select("#cgraph").append("svg:svg")
                        .attr("width", defaultConfig.width)//defaultConfig.width
                        .attr("height", defaultConfig.height)// defaultConfig.width
                        .call(zoom).on("dblclick.zoom", null);
               
                this.vis=this.vis.append('g').attr('class','all')
                        .attr("width", defaultConfig.width)//defaultConfig.width
                        .attr("height", defaultConfig.height)//defaultConfig.width
                        .attr("transform","translate("+sys_transform.toString()+")scale("+sys_scale+")");
                
                zoom.translate(sys_transform);
                zoom.scale(sys_scale);
                        
                        //.attr("transform","translate(450,200) scale(0.3)")//add 

                this.force = d3.layout.force()
                        .nodes(defaultConfig.data.nodes)
                        .links(defaultConfig.data.links)
                        .gravity(.0001)
                        .distance(defaultConfig.distance)
                        .charge(function(d){
                            return (-10* d.index)
                        })
                        .size([defaultConfig.width,defaultConfig.height])
                        .start();
                this.vis.append("svg:defs").selectAll("marker")
                        .data(["end"])
                        .enter().append("svg:marker")
                        .attr("id","arrow")
                        .attr('class','arrow')
                        .attr("viewBox", "0 -5 10 10")
                        .attr("refX", 27)
                        .attr("refY", 0)
                        .attr("markerWidth", 9)
                        .attr("markerHeight", 16)
                        .attr("markerUnits","userSpaceOnUse")
                        .attr("orient", "auto")
                        .append("svg:path")
                        .attr("d", "M0,-5L10,0L0,5")
                        .attr('fill','#666');
                
                this.link = this.vis.selectAll("line.link")
                        .data(defaultConfig.data.links)
                        .enter().append("svg:line")
                        .attr("class", "link")
                        .attr('stroke-width',1)
                        .attr("x1", function(d) {
                            return d.source.x;
                        })
                        .attr("y1", function(d) { return d.source.y; })
                        .attr("x2", function(d) { return d.target.x; })
                        .attr("y2", function(d) { return d.target.y; })
                        .attr("marker-end","url(#arrow)")
                        .attr('stroke','#999');

                var dragstart=function(d, i) {
                    _this.force.stop();
                    d3.event.sourceEvent.stopPropagation();
                };

                var dragmove=function(d, i) {
                    d.px += d3.event.dx;
                    d.py += d3.event.dy;
                    d.x += d3.event.dx;
                    d.y += d3.event.dy;
                    _this.tick();
                };

                var dragend=function(d, i) {
                    d.fixed = true;
                    _this.tick();
                    _this.force.resume();
                };

                this.nodeDrag = d3.behavior.drag()
                        .on("dragstart", dragstart)
                        .on("drag", dragmove)
                        .on("dragend", dragend);

                this.highlightObject=function(obj){
                    if (obj) {
                        var objIndex= obj.index;
                        dependsNode=dependsNode.concat([objIndex]);
                        dependsLinkAndText=dependsLinkAndText.concat([objIndex]);
                        defaultConfig.data.links.forEach(function(lkItem){
                            if(objIndex==lkItem['source']['index']){
                                dependsNode=dependsNode.concat([lkItem.target.index])
                            }else if(objIndex==lkItem['target']['index']){
                                dependsNode=dependsNode.concat([lkItem.source.index])
                            }
                        });
                        _this.node.classed('inactive',function(d){
                            return (dependsNode.indexOf(d.index)==-1)
                        });
                        _this.link.classed('inactive', function(d) {

                            return ((dependsLinkAndText.indexOf(d.source.index)==-1)&&(dependsLinkAndText.indexOf(d.target.index)==-1))
                        });

                        _this.linetext.classed('inactive',function(d){
                            return ((dependsLinkAndText.indexOf(d.source.index)==-1)&&(dependsLinkAndText.indexOf(d.target.index)==-1))
                        });
                    } else {
                        _this.node.classed('inactive', false);
                        _this.link.classed('inactive', false);
                        _this.linetext.classed('inactive', false);
                    }
                };

                this.highlightToolTip=function(obj){
                    if(obj){
                        _this.tooltip.html("<div class='title'>PMC"+obj.name+"</div><table class='detail-info'><tr><td class='td-label'>Title:</td><td>"+obj.title+"</td></tr>" +
                                        "<tr><td class='td-label'>Link：</td><td><a target='_blank' href='http://ncbi.nlm.nih.gov/pmc/articles/PMC"+obj.name+"'>Check it now</a></td></tr>"+
                                        "<tr><td class='td-label'>Subscribe：</td><td><a href='./main/subscribe?pmcid=PMC"+obj.name+"'>Follow</a></td></tr></table>")
                                .style("left",(d3.event.pageX+20)+"px")
                                .style("top",(d3.event.pageY-20)+"px")
                                .style("opacity",1.0);
                    }else{
                        _this.tooltip.style("opacity",0.0);
                    }
                };

                this.tooltip=d3.select("#cgraph").append("div")
                        .attr("class","tooltip")
                        .attr("opacity",0.0)
                        .on('dblclick',function(){
                            d3.event.stopPropagation();
                        })
                        .on('mouseover',function(){
                            if (_this.node.mouseoutTimeout) {
                                clearTimeout(_this.node.mouseoutTimeout);
                                _this.node.mouseoutTimeout = null;
                            }
                        })
                        .on('mouseout',function(){
                            if (_this.node.mouseoutTimeout) {
                                clearTimeout(_this.node.mouseoutTimeout);
                                _this.node.mouseoutTimeout = null;
                            }
                            _this.node.mouseoutTimeout=setTimeout(function() {
                                _this.highlightToolTip(null);
                            }, 300);
                        });

                this.node = this.vis.selectAll("g.node")
                        .data(defaultConfig.data.nodes)
                        .enter().append("svg:g")
                        .attr("class", "node")
                        .call(_this.nodeDrag)
                        .on('mouseover', function(d) {
                            if (_this.node.mouseoutTimeout) {
                                clearTimeout(_this.node.mouseoutTimeout);
                                _this.node.mouseoutTimeout = null;
                            }
                            _this.highlightToolTip(d);
                        })
                        .on('mouseout', function() {
                            if (_this.node.mouseoutTimeout) {
                                clearTimeout(_this.node.mouseoutTimeout);
                                _this.node.mouseoutTimeout = null;
                            }
                            _this.node.mouseoutTimeout=setTimeout(function() {
                                _this.highlightToolTip(null);
                            }, 300);
                        })
                        .on('dblclick',function(d){
                            _this.highlightObject(d);
                            d3.event.stopPropagation();
                        });
                        d3.select("#cgraph").on('dblclick',function(){
                            dependsNode=dependsLinkAndText=[];
                            _this.highlightObject(null);
                        });


                this.node.append("svg:image")
                        .attr("class", "circle")
                        .attr("xlink:href", "images/mobile.png")
                        .attr("x", "-15px")
                        .attr("y", "-15px")
                        .attr("width", "30px")
                        .attr("height", "30px");

                this.node.append("svg:text")
                        .attr("class", "nodetext")
                        .attr("dy", "30px")
                        .attr('text-anchor','middle')
                        .text(function(d) { return d.name })
                        .attr('fill',function(d,i){
                            return _this.color(i);
                        });

                this.linetext=this.vis.selectAll('.linetext')
                        .data(defaultConfig.data.links)
                        .enter()
                        .append("text")
                        .attr("class", "linetext")
                        .attr("x",function(d){ return (d.source.x + d.target.x) / 2})
                        .attr("y",function(d){ return (d.source.y + d.target.y) / 2})
                        .text(function (d) {
                            return d.relation
                        })
                        .attr('fill',function(d,i){
                            return _this.color(i);
                        })
                        .call(this.force.drag);

                this.zoomed=function(){
                    _this.vis.attr("transform","translate("+d3.event.translate+") scale("+d3.event.scale+")")
                };


                var findMaxWeightNode=function(){
                    var baseWeight= 1,baseNode;
                    defaultConfig.data.nodes.forEach(function(item){
                        if(item.weight>baseWeight){
                            baseWeight=item.weight
                            baseNode=item
                        }
                    });
                    return baseNode;
                };

                this.tick=function() {
                    var findMaxWeightNodeIndex=findMaxWeightNode().index;
                    defaultConfig.data.nodes[findMaxWeightNodeIndex].x = defaultConfig.width / 2;
                    defaultConfig.data.nodes[findMaxWeightNodeIndex].y = defaultConfig.height / 2;
                    _this.link.attr("x1", function(d) { return d.source.x; })
                            .attr("y1", function(d) { return d.source.y; })
                            .attr("x2", function(d) { return d.target.x})
                            .attr("y2", function(d) { return d.target.y;});
                    _this.linetext.attr("x",function(d){ return (d.source.x + d.target.x) / 2})
                            .attr("y",function(d){ return (d.source.y + d.target.y) / 2});
                    _this.node.attr("transform", function(d) { return "translate(" + d.x + "," + d.y + ")"; });
                };
                _this.force.on("tick", this.tick);

            }
            new GroupExplorer('#cgraph',{
                data:json
            });
        });
	}
	
</script>
</body>
</html>
