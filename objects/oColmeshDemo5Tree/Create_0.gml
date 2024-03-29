/// @description

//Create a randomized matrix for this tree
var xrot = random_range(-5, 5);
var yrot = random_range(-5, 5);
var zrot = random(360);
var xscale = 30 * random_range(.9, 1.1);
var yscale = 30 * random_range(.9, 1.1);
var zscale = 30 * random_range(.9, 1.1);
M = matrix_build(x, y, 0, xrot, yrot, zrot, xscale, yscale, zscale);

//Add the mesh to the colmesh by reference as a dynamic, instead of baking its triangles into the colmesh
shape = new colmesh_dynamic(levelColmesh.treeColMesh, M);
levelColmesh.addShape(shape);
