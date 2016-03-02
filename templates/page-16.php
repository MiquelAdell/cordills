<?php the_content(); ?>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>


<?php
$args = array( 'post_type' => 'testimonial', 'posts_per_page' => 5 );
$testimonialLoop = new WP_Query( $args );
?>


<div class="col-md-12" data-wow-delay="0.2s" class='quote-carousel-holder'>
    <div class="carousel slide" data-interval="false" data-ride="carousel" id="quote-carousel">
        <ol class="carousel-indicators">
            <?php
            $i = 0;
            while ( $testimonialLoop->have_posts() ) :
                $testimonialLoop->the_post();

                $image = get_field('image');
                if( !empty($image) ){
                    ?>
                    <li data-target="#quote-carousel" data-slide-to="<?=$i?>" class="
                        <?php if ($i === 0): ?>active<?php endif ?>
                    "><img class="img-responsive " src="<?=$image['url']?>" alt="<?=$image['alt']?>"></li>
                    <?php
                }
                $i++;
            endwhile;
            wp_reset_postdata();
            ?>
        </ol>

        <!-- Carousel Slides / Quotes -->
        <div class="carousel-inner text-center ">

            <?php
            $i = 0;
            while ( $testimonialLoop->have_posts() ) :
                $testimonialLoop->the_post();
                $testimonial = get_post();

                $has_read_more = mb_strpos($testimonial->post_content,'<!--more-->') !== false;
                $text = get_the_excerpt();
                if($has_read_more){
                    $text .= "…";
                }
                // If the text is an excerpt:
                $connected = new WP_Query( array(
                  'connected_type' => 'testimonied_project',
                  'connected_items' => $testimonial->ID,
                  'orderby' => 'DESC',
                  'posts_per_page' => 1
                ) );

                $connected_project = false;
                if ( $connected->have_posts() ) {
                  $connected_project = $connected->post;
                }

                $link = false;
                if($has_read_more){
                    $link = "<div class='read-more-text'><a href='".get_permalink()."'>".__('read the full testimonial')."</a></div>";
                }
                else if($connected_project){
                    $link = "<div class='read-more-text'><a href='".get_permalink()."'>".__('see the project')."</a></div>";
                }

                ?>
                <div class="item
                    <?php if ($i === 0): ?>active<?php endif ?>
                ">
                    <blockquote>
                        <div>
                            <div class='excerpt'><?=$text?></div>
                            <small>
                                <?php
                                the_title();
                                if (!empty(get_field('company_name'))) {
                                    echo ", ".__('from')." ".text_with_link(get_field('company_name'),get_field('company_url'));
                                }
                                ?>
                            </small>
                            <?=$link?>
                        </div>
                    </blockquote>
                </div>
                <?php
                $i++;
            endwhile;
            wp_reset_postdata();
            ?>
        </div>

        <!-- Carousel Buttons Next/Prev -->
        <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
        <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
    </div>
</div>
