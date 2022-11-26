//  1_sphere3ed.pov
#include "colors.inc"  
#include "skies.inc"  
#include "textures.inc" 

//statics  
camera{ 
  location <0.0, 0.0, -10.0> 
  look_at  <0.0, 0.0, 0.0>
} 
sky_sphere {
  S_Cloud1
}

plane {
  y, -4
  pigment { color rgb <0.8,0.6,0.4> }
}      



light_source { 
  <5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
} 

light_source { 
  <-5.0,5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}

light_source { 
  <0.0,-5.0,-5.0> 
  color rgb <1.0, 1.0, 1.0>
}

// body
sphere { 
  <0.0, 0.0 ,0.0>, 3.0 
//  pigment { rgb <1.0, 1.0, 0.25> }
  
    texture {
    Yellow_Pine  
    finish { Shiny }
    scale 4
  }
  
  
}    

// left
sphere { 
  <-1.5, 0.0 ,-1.75>, 1.0  
  pigment { rgb <1.0, 0.0, 0.0> }
} 
//right
sphere { 
  <1.5, 0.0 ,-1.75>, 1.0  
  pigment { rgb <1.0, 0.0, 0.0> }
}

 
// left
sphere { 
  <-0.75, 0.75 ,-2.75>, 0.5  
  pigment { rgb <0.5, 0.5, 0.5> }
} 
//right
sphere { 
  <0.75, 0.75 ,-2.75>, 0.5  
  pigment { rgb <0.5, 0.5, 0.5> }
}


//right
sphere { 
  <0.0, 0.0 ,-2.75>, 0.5  
  pigment { rgb <1.0, 0.0, 0.0> }
}

//mouse

box{
<-1.5,-1.75,-3>
<1.5,-0.5,3>
pigment{color rgb<1.0,0,0>}
}