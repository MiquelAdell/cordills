<?php

use Roots\Sage\Setup;
use Roots\Sage\Wrapper;

?>

<!doctype html>
<html <?php language_attributes(); ?>>
<?php get_template_part('templates/head'); ?>
<body <?php body_class(); ?>>
	<!--[if IE]>
	<div class="alert alert-warning">
	<?php _e('You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.', 'sage'); ?>
</div>
<![endif]-->
<?php
do_action('get_header');
get_template_part('templates/header');
?>
<div class="pt-page pt-page-main">

	<div id="brand-container" class="container-fluid brand-container-fluid">
		<div class="brand-in-home">
			<div class="brand col-xs-12 text-center">
				<?php web_title(); ?>
			</div>
		</div>
		<div class="nav-home-container visible">
			<nav class="nav-home text-center">
				<div class="menu-main-menu-container">
					<ul id="menu-main-menu-home" class="main-menu nav text-center">
						<?=the_main_menu()?>
					</ul>
				</div>
			</nav>
		</div>
	</div>

	<div class="pt-page-holder">
		<div class="wrap" role="document">
			<main class="main">
				<?php include Wrapper\template_path(); ?>
			</main> <!-- /.main -->
		</div> <!-- /.wrap -->
		<?php
		do_action('get_footer');
		get_template_part('templates/footer');
		wp_footer();
		?>
	</div> <!-- /.pt-page-holder -->
</div> <!-- /.pt-page-main -->
<div class="pt-page pt-page-menu">
	<div class="wrap" role="document">
		<main class="main">
			<nav class="nav-primary">
				<div class="menu-main-menu-container">
					<ul id="menu-main-menu-lateral"  class="main-menu full-size-menu nav">
						<?=the_main_menu()?>
					</ul>
				</div>
			</nav>
		</main>
	</div>
</div> <!-- /.pt-page-menu -->
</body>
</html>
