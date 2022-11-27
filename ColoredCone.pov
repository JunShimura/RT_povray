// 5_polygon1.pov
#include "colors.inc"  
#include "skies.inc"  
   

camera {
  location <0, 10, -2>
  look_at <0.0, 0.5, 0.0>
}

light_source { 
 <0, 20, 0> color rgb <1.0, 1.0, 1.0> 
}

plane { <0, 1, 0>, -3
    pigment { color rgb <0.8, 0.9, 0.8> }
}

sky_sphere {
  S_Cloud2
}


#declare top=<0,5,0>;
#declare r=4.0;
#declare n=50.0;      
#declare i=0.0;
#declare r0=0;
#declare r1=0;

#while(i<=n)
#declare r0=radians(i*360.0/n);
#declare r1=radians((i+1)*360.0/n);

triangle { 
  top, 
  <cos(r0),0,sin(r0)>*r,
  <cos(r1),0, sin(r1)>*r	
  pigment { color rgb <(cos(r0)+1)/2,(cos(r0+radians(90)+1))/2, 1> }
  finish { ambient 0.5 diffuse 0.8 specular 0.8 roughness 0.01 }
}

#declare i=i+1;
#end
