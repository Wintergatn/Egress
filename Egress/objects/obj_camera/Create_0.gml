/// @description Insert description here
// You can write your code in this editor
//camera = camera_create();

//var viewmat = matrix_build_lookat(x,y,-100, x,y,0,0,1,0);
//var projmat = matrix_build_projection_ortho(320,240,1.0,32000.0);

//camera_set_view_mat(camera,viewmat);
//camera_set_proj_mat(camera,projmat);

//view_camera[0] = camera;

view_width = 1920 / 6
view_height = 1080 / 6

window_scale = 4

window_set_size(view_width *window_scale, view_height * window_scale);
alarm[0] = 1;

surface_resize(application_surface,view_width * window_scale, view_height * window_scale);
