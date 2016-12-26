#include "srcs/includes/scene_setup.pov"

#declare major_width = 1;
#declare major_length= 50;
#declare minor_width = 0.5;
#declare minor_length= 4;
#declare tick_interval=10;
#declare loop=0;

cylinder{ <0,0,0>, <major_length+minor_width,0,0>, major_width
          pigment { rgb <1,0,0> } }
#while (loop < major_length) 
        #declare loop=loop+tick_interval;
        cylinder{ <loop,0,0>,<loop,minor_length,0>, minor_width
                  pigment { rgb <1,0,0> }
                  }
#end 

cylinder{ <0,0,0>, <0,major_length+minor_width,0>, 1
          pigment { rgb <0,1,0> } }
#declare loop=0;
#while (loop < major_length) 
        #declare loop=loop+tick_interval;
        cylinder{ <0,loop,0>,<0,loop,minor_length>, minor_width
                  pigment { rgb <0,1,0> }
                  }
#end


cylinder{ <0,0,0>, <0,0,major_length+minor_width>, 1
          pigment { rgb <0,0,1> } }                    
#declare loop=0;
#while (loop < major_length) 
        #declare loop=loop+tick_interval;
        cylinder{ <0,0,loop>,<0,minor_length,loop>, minor_width
                  pigment { rgb <0,0,1> }
                  }
#end          

#declare textscale=15;
#declare textthick=0.5;
#declare textrethick=textthick/textscale;

//#declare font="georgiaz.TTF";
#declare font="fonts/LiberationSerif-Bold.ttf";
text { ttf font "x" textrethick, 0 pigment { rgb <1,0,0> } translate <-major_length,minor_length * 2,0>/textscale scale textscale rotate <0,180,0> }
text { ttf font "y" textrethick, 0 pigment { rgb <0,1,0> } translate <-minor_length*6,major_length-5,0>/textscale scale textscale rotate <0,180,0> }
text { ttf font "z" textrethick, 0 pigment { rgb <0,0,1> } translate <0,minor_length * 2,-major_length>/textscale scale textscale rotate <0,180,0> }
