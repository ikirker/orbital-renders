
#declare R1s = function(nucCharge,dist) {
  2 * pow(nucCharge,3/2) * exp(-p(nucCharge,dist,1)/2)
}

#declare Y1s = function(x,y,z){ 
  pow(4*pi, -1/2) 
}

