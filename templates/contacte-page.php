<?php /* Template Name: Contact Page */ ?>
<?php while (have_posts()) : the_post(); ?>
  <?php
  get_template_part('templates/header', 'page');
  get_template_part('templates/page', 'header'); 
  ?>

  <?php
  // get_template_part('templates/content', 'page');
  ?>
  <div class="row">
    <?php if (has_post_thumbnail( $post->ID ) ): ?>
    <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' ); ?>
    <div id="contact-page-image" style="background-image: url('<?php echo $image[0]; ?>')"></div>
    <?php endif; ?>
  </div>
  <div class="row equal">
    <div class="col-xs-12 col-sm-4">
      <div class="panel panel-default">
        <div class="panel-heading">Correu</div>
        <div class="panel-body"><span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com"><strong>miquel@miqueladell.com</strong></a></span></div>
      </div>
    </div>
    <div class="col-xs-12 col-sm-4">
      <div class="panel panel-default">
        <div class="panel-heading">Altres formes de contacte</div>
        <div class="panel-body">
          <ul class="list-unstyled">
            <li><i class="fa fa-fw fa-skype"></i> miquel.adell</li>
            <li><i class="fa fa-fw fa-phone"></i> +34 620 015 860</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-xs-12 col-sm-4">
      <div class="panel panel-default">
        <div class="panel-heading">Xarxes socials</div>
        <div class="panel-body">
          <ul class="list-unstyled">
            <li><i class="fa fa-fw fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>
            <li><i class="fa fa-fw fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>
            <li><i class="fa fa-fw fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>
            <li><i class="fa fa-fw fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>
            <li><i class="fa fa-fw fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
<?php endwhile; ?>
