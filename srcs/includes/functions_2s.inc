
#declare R2s = function(nucCharge,dist) {
  (0.5*sqrt(2)) * (2 - p(nucCharge, dist, 2)) * pow(nucCharge, 3/2) * exp(-p(nucCharge,dist,2)/2)
}

#declare Y2s = function(x,y,z){ 
  pow(0.25*pi, -1/2) 
}

