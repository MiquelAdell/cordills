<?php the_content(); ?>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>


<?
$args = array( 'post_type' => 'testimonial', 'posts_per_page' => 5 );
$testimonialLoop = new WP_Query( $args );
?>


<div class="col-md-12" data-wow-delay="0.2s" class='quote-carousel-holder'>
    <div class="carousel slide" data-ride="carousel" id="quote-carousel">
        <ol class="carousel-indicators">
            <?
            $i = 0;
            while ( $testimonialLoop->have_posts() ) : $testimonialLoop->the_post();
                $image = get_field('image');
                if( !empty($image) ){
                    ?>
                    <li data-target="#quote-carousel" data-slide-to="<?=$i?>" class="
                        <?php if ($i === 0): ?>active<?php endif ?>
                    "><img class="img-responsive " src="<?=$image['url']?>" alt="<?=$image['alt']?>"></li>
                    <?
                }
                $i++;
            endwhile;
            ?>
        </ol>

        <!-- Carousel Slides / Quotes -->
        <div class="carousel-inner text-center ">

            <?
            $i = 0;
            while ( $testimonialLoop->have_posts() ) : $testimonialLoop->the_post();
                ?>
                <!-- Quote <?=$i?> -->
                <div class="item
                    <?php if ($i === 0): ?>active<?php endif ?>
                ">
                    <blockquote>
                        <div>
                            <div class='excerpt'><? the_excerpt(); ?></div>
                            <small><? the_title(); ?></small>
                        </div>
                    </blockquote>
                </div>
                <?
                $i++;
            endwhile;
            ?>
        </div>

        <!-- Carousel Buttons Next/Prev -->
        <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
        <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
    </div>
</div>
