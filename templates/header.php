<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->
<header class="banner nav-primary-container">
	<div class="container-fluid section-container">
		<div class="row">
			<div class="brand-in-header">
				<div class="brand text-left float-left">
					<?php web_title(); ?>
				</div>
			</div>



			<nav class="nav-primary float-right">
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
