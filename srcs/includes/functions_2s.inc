
#declare R2s = function(Q,dist) {
  (0.5*sqrt(2)) * (2 - p(Q, dist, 2)) * pow(Q, 3/2) * exp(-p(Q,dist,2)/2)
}

#declare Y2s = function(x,y,z){ 
  pow(0.25*pi, -1/2) 
}

