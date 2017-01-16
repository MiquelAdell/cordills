<?php
use Jaybizzle\CrawlerDetect\CrawlerDetect;

function cordills_redirect() {
	$CrawlerDetect = new CrawlerDetect;
	if(!$CrawlerDetect->isCrawler()){
		$sections = array(
			'highlighted-project', 'projecte-destacat', 'proyecto-destacado',
			'process','proces','proceso',
			'technologies','tecnologies','tecnologias',
			'foundations','fonaments','cimientos'
		);
		foreach($sections as $section){
			if( is_page( $section )){
				wp_redirect( home_url( '/?section='.$section ) );
				exit();
			}
		}
	}
}
add_action( 'template_redirect', 'cordills_redirect' );
