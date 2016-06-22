<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/page', 'header'); ?>
  <div class="container section-container ">
    <div class='imacMockup video-holder'>
      <div class="video">
      </div>
    </div>
<?php endwhile; ?>
