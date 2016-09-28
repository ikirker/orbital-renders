// Standard pre-defined colors
//
#include "colors.inc" 

// various numerical constants
// 
#include "consts.inc"    
// various glass finishes, colors and interiors
//
#include "glass.inc"
// some standard finishes
#include "finish.inc"
#include "textures.inc"
/*
  finish {
    Dull               // large, soft highlight
    //Shiny            // small, tight highlight

    //Phong_Dull       // less "realistic" but sometimes useful phong highlight
    //Phong_Shiny      // same in "shiny"

    //Glossy           // very tight highlights and some reflection
    //Phong_Glossy     // phong version of the same

    //Luminous         // totally ambient not influenced by light sources (for example sky)
    //Mirror           // perfect mirror without highlights
  }
  */


global_settings {
	ambient_light rgb <0.2, 0.2, 0.2>
	max_trace_level 15
}

background { color rgb <1,1,1> }

#declare camera_position=<75.0,50.1,100.0>;


camera {
	orthographic
	location camera_position
	
	up    <0,100,0>
  right  <100,0,0>

	look_at <0.0, 0.0, 0.0> 
}

light_source {
	<1000000.0, 1000000.0, -1000000.0>
	color rgb <1,1,1>
	fade_distance 600
	fade_power 0
	parallel
	point_at <0.0, 0.0, 0.0>
}

light_source {
	<1000000.0, 1000000.0, 1000000.0>
	color rgb <1,1,1>
	fade_distance 600
	fade_power 0
	parallel
	point_at <0.0, 0.0, 0.0>
}

#default {
	finish {ambient .7 diffuse .6 specular 1 roughness .05 metallic 0.5}
}

