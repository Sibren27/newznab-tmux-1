<!DOCTYPE html>
<html>

<head>
	{literal}
	<script>
		/* <![CDATA[ */
		var WWW_TOP = "{/literal}{$smarty.const.WWW_TOP}{literal}";
		var SERVERROOT = "{/literal}{$serverroot}{literal}";
		var UID = "{/literal}{if $loggedin == "true"}{$userdata.id}{else}{/if}{literal}";
		var RSSTOKEN = "{/literal}{if $loggedin == "true"}{$userdata.rsstoken}{else}{/if}{literal}";
		/* ]]> */
	</script>
	{/literal}
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>{$page->meta_title}{if $page->meta_title != "" && $site->metatitle != ""} - {/if}{$site->metatitle}</title>

	<!-- Bootstrap core CSS -->
	<link href="{$smarty.const.WWW_THEMES}/shared/assets/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"
		  type="text/css"/>
	<link href="{$smarty.const.WWW_THEMES}/shared/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet"
		  type="text/css"/>
	<link href="{$smarty.const.WWW_THEMES}/shared/assets/pnotify/dist/pnotify.css" rel="stylesheet" type="text/css"/>
	<link href="{$smarty.const.WWW_THEMES}/shared/assets/animate.css/animate.min.css" rel="stylesheet">
	<!-- Normalize.css -->
	<link href="{$smarty.const.WWW_THEMES}/shared/css/normalize.css" rel="stylesheet" type="text/css">
	<!-- Custom styling plus plugins -->
	<!-- Newposterwall -->
	<link href="{$smarty.const.WWW_THEMES}/shared/css/posterwall.css" rel="stylesheet" type="text/css" media="screen"/>
	<link href="{$smarty.const.WWW_THEMES}/{$theme}/css/custom.css" rel="stylesheet">
	<link href="{$smarty.const.WWW_THEMES}/{$theme}/css/icheck/flat/green.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body class="nav-md">
<div class="container body">
	<div class="main_container">
		<div class="col-md-3 left_col">
			<div class="left_col scroll-view">
				<div class="navbar nav_title" style="border: 0;">
					<a href="{$site->home_link}" class="site_title"><i class="fa fa-mixcloud"></i>
						<span>{$site->title}</span></a>
				</div>
				<div class="clearfix"></div>
				<!-- menu profile quick info -->
				<div class="profile">
					<div class="profile_pic">
						<img src="{$smarty.const.WWW_THEMES}/shared/images/userimage.png" alt="User Image"
							 class="img-circle profile_img">
					</div>
					{if $loggedin == "true"}
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>{$userdata.username}</h2>
						</div>
					{/if}
				</div>
				<!-- /menu profile quick info -->
				<br/>
				<!-- sidebar menu -->
				<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
					<div class="menu_section">
						<h3>Main</h3>
						<ul class="nav side-menu">
							{if $loggedin == "true"}
								<li><a><i class="fa fa-home"></i><span> Browse</span> <span
												class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="{$smarty.const.WWW_TOP}/newposterwall"><i
														class="fa fa-fire"></i><span> New Releases</span></a></li>
										<li><a href="{$smarty.const.WWW_TOP}/console"><i
														class="fa fa-gamepad"></i><span> Console</span></a></li>
										<li><a href="{$smarty.const.WWW_TOP}/movies"><i
														class="fa fa-film"></i><span> Movies</span></a></li>
										<li><a href="{$smarty.const.WWW_TOP}/music"><i
														class="fa fa-music"></i><span> Music</span></a></li>
										<li><a href="{$smarty.const.WWW_TOP}/games"><i
														class="fa fa-gamepad"></i><span> Games</span></a></li>
										<li><a href="{$smarty.const.WWW_TOP}/series"><i
														class="fa fa-television"></i><span> TV</span></a></li>
										<li><a href="{$smarty.const.WWW_TOP}/xxx"><i class="fa fa-venus-mars"></i><span> Adult</span></a>
										</li>
										<li><a href="{$smarty.const.WWW_TOP}/books"><i class="fa fa-book"></i><span> Books</span></a>
										</li>
										<li><a href="{$smarty.const.WWW_TOP}/browse"><i
														class="fa fa-list-ul"></i><span> Browse All Releases</span></a>
										</li>
										<li><a href="{$smarty.const.WWW_TOP}/browsegroup"><i
														class="fa fa-object-group"></i><span> Browse Groups</span></a>
										</li>
										<li><a href="{$smarty.const.WWW_TOP}/predb"><i class="fa fa-list-ol"></i><span> PreDb</span></a>
										</li>
									</ul>
								</li>
							{/if}
							<li><a><i class="fa fa-edit"></i> Articles & Links <span class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu" style="display: none">
									<li><a href="{$smarty.const.WWW_TOP}/contact-us"><i
													class="fa fa-envelope-o"></i><span> Contact</span> <span
													class="fa arrow"></span></a></li>
									{if $loggedin == "true"}
									<li><a href="{$smarty.const.WWW_TOP}/search"><i class="fa fa-search"></i> Search</a>
									</li>
									<li><a href="{$smarty.const.WWW_TOP}/rss"><i class="fa fa-rss"></i> RSS Feeds</a>
									</li>
									<li><a href="{$smarty.const.WWW_TOP}/apihelp"><i class="fa fa-cloud"></i> API</a>
									</li>
									{/if}
								</ul>
							{if $loggedin == "true"}
							<li><a href="{$smarty.const.WWW_TOP}/logout"><i class="fa fa-unlock"></i><span> Sign Out</span></a></li>
							{else}
							<li><a href="{$smarty.const.WWW_TOP}/login"><i class="fa fa-lock"></i><span> Sign In</span></a></li>
							{/if}
						</ul>
					</div>
				</div>
				<!-- /sidebar menu -->
			</div>
		</div>
		<!-- top navigation -->
		<div class="top_nav">
			<div class="nav_menu">
				<nav class="" role="navigation">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					{$header_menu}
					<ul class="nav navbar-nav">
						<li class="">
							<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
							   aria-expanded="false">
								{if $loggedin == "true"}
								<img src="{$smarty.const.WWW_THEMES}/shared/images/userimage.png"
									 alt="User Image"> {$userdata.username}
								<span class=" fa fa-angle-down"></span>
							</a>
							<ul class="dropdown-menu dropdown-usermenu animated jello pull-right">
								<li><a href="{$smarty.const.WWW_TOP}/cart"><i class="fa fa-shopping-basket"></i> My
										Download Basket</a>
								</li>
								<li>
									<a href="{$smarty.const.WWW_TOP}/queue"><i class="fa fa-list-alt"></i> My Queue</a>
								</li>
								<li>
									<a href="{$smarty.const.WWW_TOP}/mymovies"><i class="fa fa-film"></i> My Movies</a>
								</li>
								<li><a href="{$smarty.const.WWW_TOP}/myshows"><i class="fa fa-television"></i> My Shows</a>
								</li>
								<li>
									<a href="{$smarty.const.WWW_TOP}/profileedit"><i class="fa fa-cog fa-spin"></i>
										Account Settings</a>
								</li>
								{if isset($isadmin)}
									<li>
										<a href="{$smarty.const.WWW_TOP}/admin"><i class="fa fa-cogs fa-spin"></i> Admin</a>
									</li>
								{/if}
								<li>
									<a href="{$smarty.const.WWW_TOP}/profile" class="btn btn-default btn-flat"><i
												class="fa fa-user"></i> Profile</a>
								</li>
								<li>
									<a href="{$smarty.const.WWW_TOP}/logout" class="btn btn-default btn-flat"><i
												class="fa fa-unlock-alt"></i> Sign out</a>
								</li>
								{else}
								<li><a href="{$smarty.const.WWW_TOP}/login"><i class="fa fa-lock"></i><span> Login</span></a></li>
								<li><a href="{$smarty.const.WWW_TOP}/register"><i class="fa fa-bookmark-o"></i><span> Register</span></a>
								</li>
								{/if}
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- /top navigation -->

		<!-- page content -->
		<div class="right_col" role="main">
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					{$page->content}
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- footer content -->
			<footer>
				<div class="copyright-info">
					<strong>Copyright &copy; {$smarty.now|date_format:"%Y"} <a
								href="https://github.com/DariusIII/">newznab-tmux</a>.</strong> This software is open
					source,
					released under the GPL license
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->

		</div>
		<!-- /page content -->
	</div>

</div>
<script src="{$smarty.const.WWW_THEMES}/shared/assets/jquery-2.2.x/dist/jquery.min.js" type="text/javascript"></script>
<script src="{$smarty.const.WWW_THEMES}/shared/assets/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
<!-- bootstrap progress js -->
<script src="{$smarty.const.WWW_THEMES}/{$theme}/js/progressbar/bootstrap-progressbar.min.js"></script>
<script src="{$smarty.const.WWW_THEMES}/{$theme}/js/nicescroll/jquery.nicescroll.min.js"></script>
<!-- icheck -->
<script src="{$smarty.const.WWW_THEMES}/{$theme}/js/icheck/icheck.min.js"></script>
<script src="{$smarty.const.WWW_THEMES}/{$theme}/js/custom.js"></script>
<!-- jQuery migrate script -->
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.4.0.min.js"></script>
<!-- newznab default scripts, needed for stuff to work -->
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/{$theme}/scripts/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/{$theme}/scripts/jquery.autosize-min.js"></script>
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/{$theme}/scripts/jquery.qtip2.js"></script>
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/{$theme}/scripts/sorttable.js"></script>
<!-- Custom functions -->
<script src="{$smarty.const.WWW_THEMES}/{$theme}/scripts/functions.js" type="text/javascript"></script>

<!-- PNotify -->
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/shared/assets/pnotify/dist/pnotify.js"></script>
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/shared/assets/pnotify/dist/pnotify.animate.js"></script>
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/shared/assets/pnotify/dist/pnotify.desktop.js"></script>
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/shared/assets/pnotify/dist/pnotify.callbacks.js"></script>
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/shared/assets/pnotify/dist/pnotify.buttons.js"></script>
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/shared/assets/pnotify/dist/pnotify.confirm.js"></script>
<script type="text/javascript" src="{$smarty.const.WWW_THEMES}/shared/assets/pnotify/dist/pnotify.nonblock.js"></script>

<!-- pace -->
<script src="{$smarty.const.WWW_THEMES}/{$theme}/js/pace/pace.min.js"></script>

</body>

</html>
