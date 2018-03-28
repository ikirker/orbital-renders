
#declare R2p = function(Q,dist) {
  (1 / sqrt(24)) * p(Q, dist, 2) * pow(Q, 3/2) * exp(-p(Q,dist,2)/2)
}

#declare Y2px = function(x,y,z){ 
  (sqrt(3) * x / r(x,y,z)) * pow(4*pi, -1/2) 
}

#declare Y2py = function(x,y,z){ 
  (sqrt(3) * y / r(x,y,z)) * pow(4*pi, -1/2) 
}

#declare Y2pz = function(x,y,z){ 
  (sqrt(3) * z / r(x,y,z)) * pow(4*pi, -1/2) 
}
