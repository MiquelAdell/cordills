<?php

use Roots\Sage\Setup;
use Roots\Sage\Wrapper;

?>

<!doctype html>
<html <?php language_attributes(); ?>>
  <?php get_template_part('templates/head'); ?>
  <body <?php body_class(); ?>>
    <div id="pt-main" class="pt-perspective">
      <div class="pt-page pt-page-1"><h1><span>A collection of</span><strong>Page</strong> Transitions</h1></div>
        <!--[if IE]>
          <div class="alert alert-warning">
            <?php _e('You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.', 'sage'); ?>
          </div>
        <![endif]-->
        <?php
          do_action('get_header');
          get_template_part('templates/header');
        ?>
        <div class="wrap" role="document">
            <main class="main">
              <?php include Wrapper\template_path(); ?>
            </main><!-- /.main -->
          </div><!-- /.content -->
        </div><!-- /.wrap -->
        <?php
        do_action('get_footer');
        get_template_part('templates/footer');
        wp_footer();
        ?>
      </div> <!-- pt-page-1 -->
      <div class="pt-page pt-page-2"><h1><span>A collection of</span><strong>Page</strong> Transitions</h1></div>
    </div> <!-- pt-main -->
  </body>
</html>
