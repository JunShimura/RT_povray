// 6_while_loop2.pov

#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc"
#include "metals.inc"       

background {color Gray}
              
camera{ 
  location <7.0, -2.0, -25.0> 
  look_at  <0.0, 0.0, 0.0>
}               
/*
light_source { 
  <5.0,8.0,-5.0> 
  color rgb <1.0, 0.5, 0.5>
}
*/

light_source { 
  <-5.0,70.0,0.0> 
  color rgb <1.0, 1.0, 1.0>
  spotlight
  point_at<0.0, 0.0, 0.0>
  radius 1
  falloff 15                     
  // falloff 30
}

/*
light_source { 
  <-5.0,5.0,-5.0> 
  color rgb <1.0, 0.5, 0.5>
}
*/
plane { <0, 1, 0>, -10
    pigment {
      checker color White, color Blue
    }
}
             
sky_sphere {
  S_Cloud2
}    
#declare bounds=10;
#declare s=0.25;
#declare b=0.25;
      
#declare i=-bounds;
#while(i<=bounds)

  #declare j=-bounds;
  #while(j<bounds) 

      #declare k=-bounds;
        #while(k<=bounds) 

            #if((i*i+j*j+k*k)<100 & mod( abs(i+bounds)+abs(j+bounds), 2 )=1 )
                box{
                    <i,j,k>
                    <i+b,j+b,k+b>
                    texture {T_Silver_1A}
                }
           #end
        #declare k=k+s;
        #end  

    #declare j=j+s;
    #end  

  #declare i=i+s; 
#end