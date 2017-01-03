<?php
function my_connection_types() {
		p2p_register_connection_type( array(
				'name' => 'highlighted_project',
				'from' => 'project',
				'to' => 'page'
		) );

		p2p_register_connection_type( array(
				'name' => 'testimonied_project',
				'from' => 'project',
				'to' => 'testimonial'
		) );
}
add_action( 'p2p_init', 'my_connection_types' );
