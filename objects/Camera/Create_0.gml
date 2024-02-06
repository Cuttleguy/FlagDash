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

instance_create_depth(900, 900, 0, Player);
//playerCollider=new PlayerCollider(new Vector3(100,100,1),new Vector3(100,100,100),100)

znear = 1;
zfar = 32000;
mapCol=new colmesh()
M = colmesh_matrix_build(-9, -11.625, -303, 0, 0, 90, 1, 1, 1);


map = instance_create_depth(0, 0, depth, GameObject);
map.model = load_obj("map2.obj","map2.mtl")
map.z = 1





//var buffer = buffer_load("shapes/tree.vbuff");
//capsule_middle = vertex_create_buffer_from_buffer(buffer, vertex_format);
//buffer_delete(buffer);
//var vbuffer=vertex_create_buffer_from_buffer(colmesh_load_obj_to_buffer("map.obj"),vertex_format)

//var buffer=buffer_create_from_vertex_buffer(map.model,buffer_fixed,1)
mapCol.addMesh("map2.obj",M)

//mapCol.addShape(new colmesh_cube(100,100,0,20,20,20))
//buffer_delete(buffer)

//var buffer= buffer_load("shapes/aabb.vbuff");
//obb=vertex_create_buffer_from_buffer(buffer,vertex_format)
//abcd=new ColTestAABB(obb)
//var buffer = buffer_load("shapes/capsule_middle.vbuff");
//capsule_middle = vertex_create_buffer_from_buffer(buffer, vertex_format);
//buffer_delete(buffer);

//var buffer = buffer_load("shapes/capsule_end.vbuff");
//capsule_end = vertex_create_buffer_from_buffer(buffer, vertex_format);
//buffer_delete(buffer);
//var buffer = buffer_load("meshes/map.vbuff");
//mapmesh=vertex_create_buffer_from_buffer(buffer,vertex_format)
//buffer_delete(buffer)
//col1=new ColTestCapsule(capsule_end,capsule_middle)

tilemap_vb = tilemap_to_vertex_buffer("GroundTiles", vertex_format);
//var data = buffer_create_from_vertex_buffer(map.model, buffer_fixed, 1);
//var vertex_size = 28;
//triangle_array = array_create(buffer_get_size(data) / vertex_size / 3);
//for (var i = 0, n = array_length(triangle_array); i < n; i++) {
//    triangle_array[i] = new ColTriangle(
//        new Vector3(
//            buffer_peek(data, i * vertex_size * 3 + 0 * vertex_size + 0, buffer_f32),
//            buffer_peek(data, i * vertex_size * 3 + 0 * vertex_size + 4, buffer_f32),
//            buffer_peek(data, i * vertex_size * 3 + 0 * vertex_size + 8, buffer_f32)
//        ),
//        new Vector3(
//            buffer_peek(data, i * vertex_size * 3 + 1 * vertex_size + 0, buffer_f32),
//            buffer_peek(data, i * vertex_size * 3 + 1 * vertex_size + 4, buffer_f32),
//            buffer_peek(data, i * vertex_size * 3 + 1 * vertex_size + 8, buffer_f32)
//        ),
//        new Vector3(
//            buffer_peek(data, i * vertex_size * 3 + 2 * vertex_size + 0, buffer_f32),
//            buffer_peek(data, i * vertex_size * 3 + 2 * vertex_size + 4, buffer_f32),
//            buffer_peek(data, i * vertex_size * 3 + 2 * vertex_size + 8, buffer_f32)
//        )
//    );
//}
////for(var i=0,n=array_length(triangle_array); i <n; i++){

////}
//buffer_delete(data);



//_map_collider=new ColTransformedModel(new ColMesh(triangle_array),new Vector3(100,100,501))
//_map_collider=new ColTestModel(map.model,triangle_array)
var regionSize = 100; //120 is a magic number I chose that fit well for my player size and level complexity. It may have to be different for your game!
mapCol.subdivide(regionSize);