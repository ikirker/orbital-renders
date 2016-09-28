#include "includes/scene_setup.pov"
#include "includes/common_maths.pov"
#include "includes/functions_5f.pov"

#declare using_function = function (x,y,z) { R5f(1,r(x,y,z)) * Y5fxyz(x,y,z) }

union{
isosurface {
    function { using_function(x,y,z) }
    contained_by { box { -50, 50 } }
    threshold 0.0015
    accuracy 0.1
    open
    pigment { rgb <0.8, 0.2, 0.8> }  
    /*material {M_Ruby_Glass}
    interior {I_Glass}*/
    no_shadow
}
isosurface {
    function { -1 * using_function(x,y,z) }
    contained_by { box { -50, 50 } }
    threshold 0.0015
    accuracy 0.1
    open
    pigment { rgb <0.2, 0.8, 0.2> }    
    no_shadow
}
}

