
#declare R3d = function(nucCharge,dist) {
  (1 / (9*sqrt(30))) * p(nucCharge,dist, 3) * pow(nucCharge,3/2) * exp(-p(nucCharge,dist,5)/2)
}

#declare Y3dz2 = function(x,y,z){ 
  sqrt(5/4) * (2*pow(z,2) - (pow(x,2) + pow(y,2)))/(pow(r(x,y,z),2)) * (pow(pi/4, 1/2)) 
}

#declare Y3dx2y2 = function(x,y,z) {
  sqrt(15/4) * (pow(x,2) - pow(y,2)) * pow(r(x,y,z),-2) * pow(pi/4,1/2)
}

#declare Y3dxy = function(x,y,z){
  sqrt(60/4) * x * y * pow(r(x,y,z),-2) * pow(pi/4,1/2)
}

#declare Y3dxz = function(x,y,z){
  sqrt(60/4) * x * z * pow(r(x,y,z),-2) * pow(pi/4,1/2)
}
  
#declare Y3dyz = function(x,y,z){
  sqrt(60/4) * y * z * pow(r(x,y,z),-2) * pow(pi/4,1/2)
}
