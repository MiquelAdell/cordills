<?php
use Jaybizzle\CrawlerDetect\CrawlerDetect;

function my_page_template_redirect() {
	$CrawlerDetect = new CrawlerDetect;
	if(!$CrawlerDetect->isCrawler()){
		$sections = array('projecte-destacat','proces','tecnologies','fonaments');
		foreach($sections as $section){
			if( is_page( $section )){
				wp_redirect( home_url( '/?section='.$section ) );
				exit();
			}
		}
	}
}
add_action( 'template_redirect', 'my_page_template_redirect' );
