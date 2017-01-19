<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->
<?php /*
<?php if (has_post_thumbnail( $post->ID ) ): ?>
<?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' ); ?>
<div id="contact-page-image" style="background-image: url('<?php echo $image[0]; ?>')"></div>
<?php endif; ?>
*/?>
<?php get_template_part('templates/page', 'header'); ?>
<div class="content-fluid contact-container">
  <div class="row">
    <div class="contact-row">
      <div class="col-sm-7 col-xs-12 image-holder">
        <div class="image"></div>
      </div>

      <div class="col-xs-12 col-sm-4 panels-holder">
          <?php /* Template Name: Contact Page */ ?>
          <?php while (have_posts()) : the_post(); ?>
            <?php
            get_template_part('templates/content', 'page');
            ?>
          <?php endwhile; ?>
      </div>
    </div>
  </div>
</div>
