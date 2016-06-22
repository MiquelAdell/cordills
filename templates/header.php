<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->
<header class="banner nav-primary-container">
	<div class="container-fluid section-container">
		<div class="row">
			<div class="brand col-xs-9 col-sm-5 text-left">
				<a href="<?= esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a>
			</div>


			<nav class="nav-primary col-xs-3 col-sm-7 text-right">
				<div class="menu-main-menu-container">
					<ul id="menu-main-menu-header" class="main-menu nav">
						<?=the_main_menu()?>
					</ul>
				</div>
			</nav>

			<button class="hamburger hamburger--arrowalt" type="button">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</button>
		</div>
	</header>
