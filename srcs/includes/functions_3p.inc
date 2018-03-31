
#declare R3p = function(Q,dist) {
  (1 / (9*sqrt(6))) * p(Q,dist,3) * (4 - p(Q,dist,3)) * pow(Q,3/2) * exp(-p(Q,dist,3)/2)
}

#declare Y3px = function(x,y,z) {
  (sqrt(3) * x / r(x,y,z)) * pow(4 * pi, -1/2)
}

#declare Y3py = function(x,y,z) {
  (sqrt(3) * y / r(x,y,z)) * pow(4 * pi, -1/2)
}

#declare Y3pz = function(x,y,z) {
  (sqrt(3) * z / r(x,y,z)) * pow(4 * pi, -1/2)
}
