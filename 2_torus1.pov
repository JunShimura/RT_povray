//  2_torus1.pov

camera{ 
  location <0.0, 3.0, -3.0> 
  look_at  <0.0, 0.0, 0.0>
}           

light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

torus {
  0.8,
  0.2
  pigment {color rgb <0.0, 1.0, 0.0>}
}

