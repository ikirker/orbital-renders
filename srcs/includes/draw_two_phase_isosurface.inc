union{
isosurface {
    function { using_function(x,y,z) }
    contained_by { box { -50, 50 } }
    threshold 0.0015
    //   accuracy 0.1
    accuracy 1
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
    //accuracy 0.1
    accuracy 1
    open
    pigment { rgb <0.2, 0.8, 0.2> }    
    no_shadow
}
}
