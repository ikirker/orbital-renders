// vim:ft=pov

#declare R5f = function(nucCharge,dist){(1/(300*sqrt(70))) * (8 - p(nucCharge,dist,5))* pow(p(nucCharge,dist,5),3) * pow(nucCharge,3/2) * exp(-p(nucCharge,dist,5)/2)}

// Cubic set
#declare Y5fx3 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(7/4) * x * (5 * pow(x,2) - 3 * pow(r(x,y,z),2)) * pow(r(x,y,z),-3) }
#declare Y5fy3 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(7/4) * y * (5 * pow(y,2) - 3 * pow(r(x,y,z),2)) * pow(r(x,y,z),-3) }
#declare Y5fz3 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(7/4) * z * (5 * pow(z,2) - 3 * pow(r(x,y,z),2)) * pow(r(x,y,z),-3) }
#declare Y5fxz2y2 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(105/4) * x * ( pow(z,2) - pow(y,2) ) * pow(r(x,y,z),-3) }
#declare Y5fyz2x2 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(105/4) * y * ( pow(z,2) - pow(x,2) ) * pow(r(x,y,z),-3) }
#declare Y5fzx2y2 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(105/4) * z * ( pow(x,2) - pow(y,2) ) * pow(r(x,y,z),-3) }
#declare Y5fxyz = function(x,y,z){ pow(4*pi,-0.5) * sqrt(105) * x*y*z * pow(r(x,y,z),-3) }

// General set -- redundant ones commented out
//#declare Y5fz3 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(7/4) * z * (5 * pow(z,2) - 3 * pow(r(x,y,z),2)) * pow(r(x,y,z),-3) }
#declare Y5fxz2 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(42/16) * x * ( 5*pow(z,2) - pow(r(x,y,z),2) )  * pow(r(x,y,z),-3) }
#declare Y5fyz2 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(42/16) * y * ( 5*pow(z,2) - pow(r(x,y,z),2) )  * pow(r(x,y,z),-3) }
#declare Y5fy3x2y2 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(70/16) * y * ( 3*pow(x,2) - pow(y,2) )      * pow(r(x,y,z),-3) }
#declare Y5fxx23y2 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(70/16) * x * ( pow(x,2) - 3*pow(y,2) )      * pow(r(x,y,z),-3) }
//#declare Y5fxyz = function(x,y,z){ pow(4*pi,-0.5) * sqrt(105) * x*y*z * pow(r(x,y,z),-3) }
//#declare Y5fzx2y2 = function(x,y,z){ pow(4*pi,-0.5) * sqrt(105/4) * z * ( pow(x,2) - pow(y,2) ) * pow(r(x,y,z),-3) }      

