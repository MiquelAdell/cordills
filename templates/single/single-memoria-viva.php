<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/page', 'header'); ?>

  <div class="container">
    <div class='imacMockup video-holder col-xs-12'>
      <video id="imac-video-portada" class="video-js video" no-controls autoplay loop preload="auto"
      poster="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/imac-video-portada.jpg" data-setup="{}">
      <source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/imac-video-portada.mp4" type='video/mp4'>
        <source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/imac-video-portada.webm" type='video/webm'>
          <p class="vjs-no-js">
            To view this video please enable JavaScript, and consider upgrading to a web browser that
            <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
          </p>
        </video>
      </div>

    <?php endwhile; ?>
