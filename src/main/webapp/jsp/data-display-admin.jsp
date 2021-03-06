<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Data-display-Mind</title>

    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>


    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="../ace-master/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../ace-master/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>

    <!-- font awesome -->
    <link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css">

    <!-- text fonts -->
    <link rel="stylesheet" href="../ace-master/assets/css/fonts.googleapis.com.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="../ace-master/assets/css/ace.min.css" class="../ace-master/ace-main-stylesheet"
          id="main-ace-style"/>

    <link rel="stylesheet" href="../ace-master/assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="../ace-master/assets/css/ace-rtl.min.css"/>

    <script src="../ace-master/assets/js/ace-extra.min.js"></script>
</head>
<body class="no-skin">

<!-- 头部bar -->
<div id="navbar" class="navbar navbar-default ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

        </button>

        <div class="navbar-header pull-left">
            <a href="${ctx}/redirectTo/index" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Mind
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right " role="navigation">
            <ul class="nav ace-nav">


                <!-- 蓝色 方块 个人中心 必要 -->
                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="../ace-master/assets/images/avatars/user.jpg"
                             alt="Jason's Photo"/>
                        <span class="user-info">

									<small>Welcome,</small>
                            <!-- 此处名字可以替换 -->
									${SESSION_USER.username}
								</span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">


                        <li>
                            <!-- 账号管理 -->
                            <a href="${ctx}/redirectTo/user">
                                <i class="ace-icon fa fa-user" style="font-family: microsoft yahei"></i>
                                账号管理
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="${ctx}/user/logout">
                                <i class="ace-icon fa fa-power-off"></i>
                                退出登录
                            </a>
                        </li>
                    </ul>
                </li>


            </ul>
        </div>
    </div>
</div>

<!-- 主窗口 -->
<div class="main-container ace-save-state" id="main-container">

    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
            //TODO handle the exception
        }
    </script>

    <!-- 侧边按钮菜单	-->
    <div id="sidebar" class="sidebar responsive ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
                //TODO handle the exception
            }
        </script>


        <!-- 侧边菜单选项 -->
        <ul class="nav nav-list">
            <!-- 当前活动窗口 -->
            <li class="">
                <a href="${ctx}/redirectTo/index">
                    <i class="menu-icon fa fa-home"></i>
                    <span class="menu-text">
								首页
							</span>
                </a>
                <b class="arrow"></b>
            </li>

            <!-- 机器管理 -->
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-desktop"></i>
                    <span class="menu-text" style="font-family: microsoft yahei">
								机器管理
							</span>
                    <!-- 展开箭头 -->
                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <!-- 设备列表页面 -->
                    <li class="">

                        <a href="${ctx}/redirectTo/machine">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <span style="font-family: microsoft yahei">
										设备列表
									</span>

                            <!-- <b class="arrow fa fa-angle-down"></b> -->
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <!-- 故障维修 -->
                    <li class="">

                        <a href="${ctx}/redirectTo/machinefix">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <span style="font-family: microsoft yahei">
										故障维修
									</span>
                            <!-- <b class="arrow fa fa-angle-down"></b> -->
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>

            </li>

            <!-- 商品管理 -->
            <li class="">
                <a href="${ctx}/redirectTo/merchandise">
                    <i class="menu-icon fa fa-th-list">
								<span class="menu-text" style="font-family: microsoft yahei">
									商品管理
								</span>
                    </i>
                </a>
                <b class="arrow"></b>
            </li>

            <!-- 数据统计 -->
            <li class="">

                <a href="${ctx}/redirectTo/dataall">
                    <!-- <i class="menu-icon fa fa-picture-o"> -->
                    <i class="menu-icon fa fa-google-plus">
								<span class="menu-text" style="font-family: microsoft yahei">
									数据统计
								</span>
                    </i>
                </a>
                <b class="arrow"></b>
            </li>

            <!-- 图说数据 -->
            <li class="active">

                <a href="${ctx}/redirectTo/datadisplay">
                    <i class="menu-icon  fa fa-bar-chart">
								<span class="menu-text" style="font-family: microsoft yahei">
									图说数据
								</span>
                    </i>
                </a>
                <b class="arrow"></b>
            </li>

            <!-- 账号管理 -->
            <li class="">

                <a href="${ctx}/redirectTo/user">
                    <i class="menu-icon fa fa-user">
								<span class="menu-text" style="font-family: microsoft yahei">
									账号管理
								</span>
                    </i>
                </a>
                <b class="arrow"></b>
            </li>
        </ul>
        <!-- <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div> -->
    </div>
    <!-- 结束侧边菜单 -->

    <!-- 主体内容 -->
    <div class="main-content">

        <!-- 页面导航 -->
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>

                        <span style="font-family: microsoft yahei">
									<a href="#">
										首页
									</a>
								</span>

                    </li>
                    <li>
								<span style="font-family: microsoft yahei">
									<a href="#">
										图说数据
									</a>
								</span>
                    </li>

                </ul>
            </div>


            <!-- 页面内容 -->


            <div class="page-content">
                <div class="page-header">
							<span style="font-family: microsoft yahei">
								<h1>
									图说数据
									<small>
										<i class="ace-icon fa fa-angle-double-right"></i>
										显示综合数据详细
									</small>
								</h1>
							</span>
                </div><!-- /.page-header -->

                <div class="row">

                    <div class="col-xs-12">

                        <div class="alert alert-block alert-success" id="alert1">

                            <button type="button" class="close" id="closealert" data-dismiss="alert">
                                <i class="ace-icon fa fa-times"></i>
                            </button>

                            <i class="ace-icon fa fa-check green"></i>

                            Welcome to
                            <strong class="green">
                                data-display
                                <small></small>
                            </strong>
                        </div>


                        <div class="space-6"></div>


                    </div>
                </div>
                <div class="row">
                    <div id="container" style="height: 600px ;">

                    </div>
                    <div class="space-6"></div>
                    <div id="containerzhu" style="height: 600px">

                    </div>
                    <div class="space-6"></div>
                    <div id="containerzhe" style="height: 600px">
                    </div>
                    <div class="space-6"></div>
                    <div id="containermap" style="height: 600px">
                    </div>


                </div><!-- page-content -->

            </div>

        </div>
    </div>
    <!-- 页面脚底 -->
    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Mind</span>
							Application &copy; 2019-2020
						</span>
                &nbsp; &nbsp;
                <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-qq light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-weibo text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-weixin  bigger-150"></i>
							</a>
						</span>
            </div>
        </div>
    </div>
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>

    <!-- /.main-container -->
</div>

<script src="../ace-master/assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->

<script src="../ace-master/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts ../ace-master/-->
<script src="../ace-master/assets/js/jquery-ui.custom.min.js"></script>
<script src="../ace-master/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="../ace-master/assets/js/jquery.easypiechart.min.js"></script>
<script src="../ace-master/assets/js/jquery.sparkline.index.min.js"></script>
<script src="../ace-master/assets/js/jquery.flot.min.js"></script>
<script src="../ace-master/assets/js/jquery.flot.pie.min.js"></script>
<script src="../ace-master/assets/js/jquery.flot.resize.min.js"></script>

<!-- ace scripts -->
<script src="../ace-master/assets/js/ace-elements.min.js"></script>
<script src="../ace-master/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
<script type="text/javascript"
        src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>

<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

<script type="text/javascript">

    //饼状图

    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    option = {
        backgroundColor: '#FFFFFF',

        title: {
            text: '商品热度',
            left: 'center',
            top: 20,
            textStyle: {
                color: '#171717'
            }
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },

        visualMap: {
            show: false,
            min: 80,
            max: 1000,
            inRange: {
                colorLightness: [0, 1]
            }
        },
        series: [{
            name: '',
            type: 'pie',
            radius: '55%',
            center: ['50%', '50%'],
            data: [
            ].sort(function (a, b) {
                return a.value - b.value;
            }),
            roseType: 'radius',
            label: {
                normal: {
                    textStyle: {
                        color: 'rgba(23, 23, 23, 0.5)'
                    }
                }
            },
            labelLine: {
                normal: {
                    lineStyle: {
                        color: 'rgba(23, 23, 23, 0.5)'
                    },
                    smooth: 0.2,
                    length: 10,
                    length2: 20
                }
            },
            itemStyle: {
                normal: {
                    color: '#c23531',
                    shadowBlur: 200,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            },

            animationType: 'scale',
            animationEasing: 'elasticOut',
            animationDelay: function (idx) {
                return Math.random() * 200;
            }
        }]
    };
    ;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
	$.ajax({
		type: "get",
		url: "${ctx}/order/getMerchandiseSoldNumTop",
		cache : false,    //禁用缓存
		dataType: "json",
		success: function(result) {
			var names=[];//定义两个数组
			var nums=[];
			console.log(result)
			for(var i=0;i<result.length;i++) {

				names.push(result[i].name);
				var obj = new Object();
				obj.name = result[i].name;
				obj.value = result[i].value;

				console.log(result[i].name)
				console.log(result[i].value)

				nums.push(obj);
			}

			myChart.setOption({ //加载数据图表
				series: {

					data: nums
				}
			});
		},
	});

</script>


<script type="text/javascript">


    // 柱状图
    var dom = document.getElementById("containerzhu");
    var myChart2 = echarts.init(dom);
    var app = {};
    option = null;
    app.title = '坐标轴刻度与标签对齐';

    option = {
        title: {
            text: '设备销售额',
            left: 'center',
            top: 20,
            textStyle: {
                color: '#171717'
            }
        },
        color: ['#3398DB'],
        tooltip: {
            trigger: 'axis',
            axisPointer: { // 坐标轴指示器，坐标轴触发有效
                type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [{
            type: 'category',
            //name
            data: [],
            axisTick: {
                alignWithLabel: true
            }
        }],
        yAxis: [{
            type: 'value'
        }],
        series: [{
            name: '设备ID',
            type: 'bar',
            barWidth: '60%',
            //value
            data: []
        }]
    };
    ;
    if (option && typeof option === "object") {
        myChart2.setOption(option, true);
    }


    $.ajax({
        type: "get",
        url: "${ctx}/machine/getMachineTop",
        cache: false,    //禁用缓存
        dataType: "json",
        success: function (result) {

			var json =result.receiveList;


            var names = [];//定义两个数组
            var nums = [];

            	//此处我返回的是list<String,map<String,String>>循环map
                    console.log(result);
                    var linNames = [];
                    var linNums = [];

					for(var i=0;i<result.length;i++) {
						linNames.push(result[i].machineId);
						console.log(result[i].machineId)
						linNums.push(result[i].sumPrice);
						console.log(result[i].sumPrice)
					}

                    myChart2.setOption({
                        xAxis: {
                            data: linNames
                        },
                        series: {
                            // 根据名字对应到相应的系列
                            name: ['数量'],
                            data: linNums
                        }
                    });
                }
        });
</script>
<script type="text/javascript">
    // 折线图
    var dom = document.getElementById("containerzhe");
    var myChart3 = echarts.init(dom);
    var app = {};
    option = null;
    option = {
        title: {
            text: '日销售额',
            left: 'center',
            top: 20,
            textStyle: {
                color: '#171717'
            }
        },
        xAxis: {
            type: 'category',
			//date
            data: []
        },
        yAxis: {
            type: 'value'
        },
        series: [{
        	//value
            data: [],
            type: 'line',
            smooth: true
        }]
    };
    ;
    if (option && typeof option === "object") {
        myChart3.setOption(option, true);
    }

	$.ajax({
		type: "get",
		url: "${ctx}/order/getDaySoldSumTop",
		cache: false,    //禁用缓存
		dataType: "json",
		success: function (result) {
			var names = [];//定义两个数组
			var nums = [];

			//此处我返回的是list<String,map<String,String>>循环map
			console.log(result);
			var linNames = [];
			var linNums = [];

			for(var i=0;i<result.length;i++) {
				linNames.push(result[i].date);
				console.log(result[i].date)
				linNums.push(result[i].sumPrice);
				console.log(result[i].sumPrice)
			}

			myChart3.setOption({
				xAxis: {
					type: 'category',
					//date
					data:linNames
				},
				series: {
					data: linNums,
					type: 'line',
					smooth: true
				}
			});
		}
	});



</script>

<script type="text/javascript">
    jQuery(function ($) {
        $('.easy-pie-chart.percentage').each(function () {
            var $box = $(this).closest('.infobox');
            var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
            var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
            var size = parseInt($(this).data('size')) || 50;
            $(this).easyPieChart({
                barColor: barColor,
                trackColor: trackColor,
                scaleColor: false,
                lineCap: 'butt',
                lineWidth: parseInt(size / 10),
                animate: ace.vars['old_ie'] ? false : 1000,
                size: size
            });
        })

        $('.sparkline').each(function () {
            var $box = $(this).closest('.infobox');
            var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
            $(this).sparkline('html',
                {
                    tagValuesAttribute: 'data-values',
                    type: 'bar',
                    barColor: barColor,
                    chartRangeMin: $(this).data('min') || 0
                });
        });


        //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
        //but sometimes it brings up errors with normal resize event handlers
        $.resize.throttleWindow = false;

        var placeholder = $('#piechart-placeholder').css({'width': '90%', 'min-height': '150px'});
        var data = [
            {label: "social networks", data: 38.7, color: "#68BC31"},
            {label: "search engines", data: 24.5, color: "#2091CF"},
            {label: "ad campaigns", data: 8.2, color: "#AF4E96"},
            {label: "direct traffic", data: 18.6, color: "#DA5430"},
            {label: "other", data: 10, color: "#FEE074"}
        ]

        function drawPieChart(placeholder, data, position) {
            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        tilt: 0.8,
                        highlight: {
                            opacity: 0.25
                        },
                        stroke: {
                            color: '#fff',
                            width: 2
                        },
                        startAngle: 2
                    }
                },
                legend: {
                    show: true,
                    position: position || "ne",
                    labelBoxBorderColor: null,
                    margin: [-30, 15]
                }
                ,
                grid: {
                    hoverable: true,
                    clickable: true
                }
            })
        }

        drawPieChart(placeholder, data);

        /**
         we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
         so that's not needed actually.
         */
        placeholder.data('chart', data);
        placeholder.data('draw', drawPieChart);


        //pie chart tooltip example
        var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
        var previousPoint = null;

        placeholder.on('plothover', function (event, pos, item) {
            if (item) {
                if (previousPoint != item.seriesIndex) {
                    previousPoint = item.seriesIndex;
                    var tip = item.series['label'] + " : " + item.series['percent'] + '%';
                    $tooltip.show().children(0).text(tip);
                }
                $tooltip.css({top: pos.pageY + 10, left: pos.pageX + 10});
            } else {
                $tooltip.hide();
                previousPoint = null;
            }

        });

        /////////////////////////////////////
        $(document).one('ajaxloadstart.page', function (e) {
            $tooltip.remove();
        });


        var d1 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.5) {
            d1.push([i, Math.sin(i)]);
        }

        var d2 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.5) {
            d2.push([i, Math.cos(i)]);
        }

        var d3 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.2) {
            d3.push([i, Math.tan(i)]);
        }


        var sales_charts = $('#sales-charts').css({'width': '100%', 'height': '220px'});
        $.plot("#sales-charts", [
            {label: "Domains", data: d1},
            {label: "Hosting", data: d2},
            {label: "Services", data: d3}
        ], {
            hoverable: true,
            shadowSize: 0,
            series: {
                lines: {show: true},
                points: {show: true}
            },
            xaxis: {
                tickLength: 0
            },
            yaxis: {
                ticks: 10,
                min: -2,
                max: 2,
                tickDecimals: 3
            },
            grid: {
                backgroundColor: {colors: ["#fff", "#fff"]},
                borderWidth: 1,
                borderColor: '#555'
            }
        });


        $('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});

        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('.tab-content')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }


        $('.dialogs,.comments').ace_scroll({
            size: 300
        });


        //Android's default browser somehow is confused when tapping on label which will lead to dragging the task
        //so disable dragging when clicking on label
        var agent = navigator.userAgent.toLowerCase();
        if (ace.vars['touch'] && ace.vars['android']) {
            $('#tasks').on('touchstart', function (e) {
                var li = $(e.target).closest('#tasks li');
                if (li.length == 0) return;
                var label = li.find('label.inline').get(0);
                if (label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation();
            });
        }

        $('#tasks').sortable({
                opacity: 0.8,
                revert: true,
                forceHelperSize: true,
                placeholder: 'draggable-placeholder',
                forcePlaceholderSize: true,
                tolerance: 'pointer',
                stop: function (event, ui) {
                    //just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
                    $(ui.item).css('z-index', 'auto');
                }
            }
        );
        $('#tasks').disableSelection();
        $('#tasks input:checkbox').removeAttr('checked').on('click', function () {
            if (this.checked) $(this).closest('li').addClass('selected');
            else $(this).closest('li').removeClass('selected');
        });


        //show the dropdowns on top or bottom depending on window height and menu position
        $('#task-tab .dropdown-hover').on('mouseenter', function (e) {
            var offset = $(this).offset();

            var $w = $(window)
            if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
                $(this).addClass('dropup');
            else $(this).removeClass('dropup');
        });

        $(document).on('click', '#dynamic-table .dropdown-toggle', function (e) {
            e.stopImmediatePropagation();
            e.stopPropagation();
            e.preventDefault();
        });

    })
</script>
</body>
</html>
