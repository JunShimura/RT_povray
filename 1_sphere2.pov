//  1_sphere2.pov
  
camera{ 
  location <0.0, 0.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
} 

light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

sphere { 
  <3.0, 0.0 ,0.0>, 2.0 
  pigment { rgb <0.0, 1.0, 0.0> }
} 