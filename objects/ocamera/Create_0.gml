/// @description Setup camera

cam = view_camera[0]; // returns default camera by game maker for this viewport
follow = ODice;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart; // this is the x we are moving TO and y we r moving TO (is updated to be the player's position to follow it)
yTo = ystart; // start = original value the x & y starts at