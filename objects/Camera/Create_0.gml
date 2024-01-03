/// @description Set up 3D things

depth = 0;

application_surface_draw_enable(false);
surface_resize(application_surface, 1280, 720);

display_set_gui_maximise();

// Bad things happen if you turn off the depth buffer in 3D
gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

gpu_set_cullmode(cull_counterclockwise);

view_mat = undefined;
proj_mat = undefined;

#region vertex format setup
// Vertex format: data must go into vertex buffers in the order defined by this
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();
#endregion

instance_create_depth(0, 0, 0, Player);
_player_collider=new PlayerCollider(new Vector3(0,0,1),new Vector3(0,0,5),5)

znear = 1;
zfar = 32000;

vb_merry = load_model("merry.d3d");

data_merry = buffer_create_from_vertex_buffer(vb_merry, buffer_fixed, 1);
//vertex_freeze(vb_merry);
map = instance_create_depth(0, 0, depth, GameObject);
map.model = load_obj("map.obj","map.mtl");

map.z = 1;
_map_collider=new ColTestMesh(map.model)
var buffer = buffer_load("shapes/capsule_middle.vbuff");
capsule_middle = vertex_create_buffer_from_buffer(buffer, vertex_format);
buffer_delete(buffer);

var buffer = buffer_load("shapes/capsule_end.vbuff");
capsule_end = vertex_create_buffer_from_buffer(buffer, vertex_format);
buffer_delete(buffer);
//col1=new ColTestCapsule(capsule_end,capsule_middle)
tilemap_vb = tilemap_to_vertex_buffer("GroundTiles", vertex_format);
//var buffer = buffer_load("meshes/maps.vbuff");
//var vertex_size = 28;
//tree_vertices = [];
//for (var i = 0, n = buffer_get_size(buffer); i < n; i += vertex_size * 3) {
//    array_push(tree_vertices, new ColTriangle(
//        new Vector3(
//            buffer_peek(buffer, i + 0 * vertex_size + 0, buffer_f32),
//            buffer_peek(buffer, i + 0 * vertex_size + 4, buffer_f32),
//            buffer_peek(buffer, i + 0 * vertex_size + 8, buffer_f32)
//        ),
//        new Vector3(
//            buffer_peek(buffer, i + 1 * vertex_size + 0, buffer_f32),
//            buffer_peek(buffer, i + 1 * vertex_size + 4, buffer_f32),
//            buffer_peek(buffer, i + 1 * vertex_size + 8, buffer_f32)
//        ),
//        new Vector3(
//            buffer_peek(buffer, i + 2 * vertex_size + 0, buffer_f32),
//            buffer_peek(buffer, i + 2 * vertex_size + 4, buffer_f32),
//            buffer_peek(buffer, i + 2 * vertex_size + 8, buffer_f32)
//        )
//    ));
//}
//tree = vertex_create_buffer_from_buffer(buffer, vertex_format);
//buffer_delete(buffer);