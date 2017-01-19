<?php
function text_with_link($text, $link = null) {
	if($link){
		return "<a href='".$link."'>".$text."</a>";
	}
	else {
		return $text;
	}
}



function the_main_menu( $theme_location = null ) {
    if(is_null($theme_location)){
        $theme_location = "primary_navigation";
    }
	if ( ($theme_location) && ($locations = get_nav_menu_locations()) && isset($locations[$theme_location]) ) {
        $menu = get_term( $locations[$theme_location], 'nav_menu' );
        $menu_items = wp_get_nav_menu_items($menu->term_id);


        $count = 0;
        $submenu = false;
        $menu_list = "";

        foreach( $menu_items as $menu_item ) {

            $link = $menu_item->url;
            $hash = parse_url($link);
            $hash = $hash['path'];
            $hash = ltrim($hash, '/');
            $title = $menu_item->title;
			$class = "";
			if(!in_array($hash,array("contacto/","contacte/","contact/"))){
				$class = "spi-link";
			}

            if ( !$menu_item->menu_item_parent ) {
                $parent_id = $menu_item->ID;

                $menu_list .= '<li class="menu-item">' ."\n";
				$menu_list .= '<a class="'.$class.'"  data-target="#'.$hash.'" href="'.$link.'" >'.$title.'</a>' ."\n";
            }

            if ( $parent_id == $menu_item->menu_item_parent ) {

                if ( !$submenu ) {
                    $submenu = true;
                    $menu_list .= '<ul class="sub-menu">' ."\n";
                }

                $menu_list .= '<li class="item">' ."\n";
                $menu_list .= '<a class="'.$class.'"  data-target="#'.$hash.'" href="'.$link.'" >'.$title.'</a>' ."\n";
                $menu_list .= '</li>' ."\n";


                if ( $menu_items[ $count + 1 ]->menu_item_parent != $parent_id && $submenu ){
                    $menu_list .= '</ul>' ."\n";
                    $submenu = false;
                }

            }

            if ( isset($menu_items[ $count + 1 ]) && $menu_items[ $count + 1 ]->menu_item_parent != $parent_id ) {
                $menu_list .= '</li>' ."\n";
                $submenu = false;
            }

            $count++;
        }

    } else {
        $menu_list = '<!-- no menu defined in location "'.$theme_location.'" -->';
    }
    echo $menu_list;
}


function web_title(){
	?>
	<a href="<?= esc_url(home_url('/')); ?>">
		<div class="text"><span>Miquel</span> <span>Adell</span></div>
		<div class="logo"></div>
	</a>
	<h2 class="slogan"><?=__('Web programming without complexities','miqueladell')?></h2>
	<?php
}


function languages_list(){
	if(!function_exists('icl_get_languages')){
		return false;
	}

    $languages = icl_get_languages('skip_missing=0&orderby=code');
    if(!empty($languages)){
        echo '<div class="language_list"><ul>';
        foreach($languages as $l){
            echo '<li>';
            if(!$l['active']) echo '<a href="'.$l['url'].'">';
            echo icl_disp_language($l['native_name']);
            if(!$l['active']) echo '</a>';
            echo '</li>';
        }
        echo '</ul></div>';
    }
}
