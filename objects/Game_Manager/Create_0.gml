if (!rollback_game_running && room == Map1)
{
		instance_deactivate_all(true);
        var _join = rollback_join_game();

        if (!_join) rollback_create_game(1);
}
#region vertex format setup
// Vertex format: data must go into vertex buffers in the order defined by this
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();
#endregion

mapCol=new colmesh()
mapM = colmesh_matrix_build(0, 0, 0, 0, 0, 180, 1, 1, 1);
mapCol.addMesh("map2.obj",mapM)
blueFlagM=colmesh_matrix_build(0,0,1,0,0,180,1.5,1.5,1)
blueFlagCol=new colmesh()
blueFlagCol.addMesh("blue_flag.obj",blueFlagM);
var regionSize = 100; //120 is a magic number I chose that fit well for my player size and level complexity. It may have to be different for your game!
mapCol.subdivide(regionSize);
blueFlagCol.subdivide(regionSize);
map = instance_create_depth(0, 0, depth, GameObject);
map.model = load_obj("map2.obj","map2.mtl")
map.z = 1
map.activated=true