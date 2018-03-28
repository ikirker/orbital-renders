
#declare R4d = function(Q,dist) {
  (1 / (96*sqrt(5))) * (6 - p(Q,dist, 4)) * pow(p(Q,dist,4),2) * pow(Q,3/2) * exp(-p(Q,dist,4)/2)
}

#declare Y4dz2 = function(x,y,z){ 
  sqrt(5/4) * (2*pow(z,2) - (pow(x,2) + pow(y,2)))/(pow(r(x,y,z),2)) * (pow(4*pi, -1/2)) 
}

#declare Y4dx2y2 = function(x,y,z) {
  sqrt(15/4) * (pow(x,2) - pow(y,2)) * pow(r(x,y,z),-2) * pow(4*pi,-1/2)
}

#declare Y4dxy = function(x,y,z){
  sqrt(60/4) * x * y * pow(r(x,y,z),-2) * pow(4*pi,-1/2)
}

#declare Y4dxz = function(x,y,z){
  sqrt(60/4) * x * z * pow(r(x,y,z),-2) * pow(4*pi,-1/2)
}
  
#declare Y4dyz = function(x,y,z){
  sqrt(60/4) * y * z * pow(r(x,y,z),-2) * pow(4*pi,-1/2)
}
