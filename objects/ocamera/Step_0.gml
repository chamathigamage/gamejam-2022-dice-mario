/// @description Update camera

// Update destination of camera according to where our player goes
if (instance_exists(follow)) {

	 xTo = follow.x;
	 yTo = follow.y;
}

// Update camera position

// the subtraction gives us the difference between where we wanna be and where we currently are
// this is moving us 1/25th of that difference because it leads to smooth camera movement for some reason
x += (xTo - x) / 25; 
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

// Update camera view - sets top left of camera to be whatever we set
camera_set_view_pos(cam, x - view_w_half, y - view_h_half); // player should be centred