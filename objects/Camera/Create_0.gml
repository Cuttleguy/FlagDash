/// @description Set up 3D things

depth = 0;

application_surface_draw_enable(false);
surface_resize(application_surface, 1280, 720);

display_set_gui_maximise();

// Bad things happen if you turn off the depth buffer in 3D
gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

gpu_set_cullmode(cull_counterclockwise);

//view_mat = undefined;
//proj_mat = undefined;




//playerCollider=new PlayerCollider(new Vector3(100,100,1),new Vector3(100,100,100),100)

znear = 1;
zfar = 32000;

player=instance_create_depth(650, 0, 1, Player)
//playerCollider=new PlayerCollider(new Vector3(100,100,1),new Vector3(100,100,100),100)
player.player_id_reference=player_id





//mapCol.addShape(new colmesh_cube(900,900,0,100,100,100))
//blue_flag = instance_create_depth(0,0, depth,GameObject);
//blue_flag.model=load_obj("blue_flag.obj","blue_flag.mtl");
//blue_flag.z=1
//blue_flag.activated=true



//var buffer = buffer_load("shapes/tree.vbuff");
//capsule_middle = vertex_create_buffer_from_buffer(buffer, vertex_format);
//buffer_delete(buffer);
//var vbuffer=vertex_create_buffer_from_buffer(colmesh_load_obj_to_buffer("map.obj"),vertex_format)

//var buffer=buffer_create_from_vertex_buffer(map.model,buffer_fixed,1)


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

//tilemap_vb = tilemap_to_vertex_buffer("TileSet1", vertex_format);
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





