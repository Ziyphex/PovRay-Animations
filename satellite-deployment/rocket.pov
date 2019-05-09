#include "colors.inc"  
#include "shapes3.inc" 
#include "textures.inc"

plane
{
 <1, 1.2, 0>, -1.2
 pigment{ color Blue }
}  

camera
{         
        //-3
 location <-3, 18, -11>
 look_at <0,(clock*1.5)+6.5,0>
}

light_source { <20, 40, -30> color White }

// create main cone of core rocket
#declare innercones=union{
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} }  
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<0,0,0.3> } 
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<0,0,-0.3> }
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<0.3,0,0> }
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<-0.3,0,0> }  
 
 cylinder{ <0,0,0>,<0,0.1,0>,0.15 pigment{Red} translate<0,0.35,0>}
 cylinder{ <0,0,0>,<0,0.1,0>,0.15 pigment{Red} translate<0,0.35,-0.3>}
 cylinder{ <0,0,0>,<0,0.1,0>,0.15 pigment{Red} translate<0,0.35,0.3>}
 cylinder{ <0,0,0>,<0,0.1,0>,0.15 pigment{Red} translate<-0.3,0.35,0>}
 cylinder{ <0,0,0>,<0,0.1,0>,0.15 pigment{Red} translate<0.3,0.35,0>}
}                    

#declare outercones=union{
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<0.3,0,0.3> }
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<-0.3,0,0.3> }
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<0.3,0,-0.3> } 
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<-0.3,0,-0.3> }
 
 cylinder{ <0,0,0>,<0,0.3,0>,0.15 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<0.3,0.35,0.3>}
 cylinder{ <0,0,0>,<0,0.3,0>,0.15 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<-0.3,0.35,0.3>}
 cylinder{ <0,0,0>,<0,0.3,0>,0.15 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<0.3,0.35,-0.3>}
 cylinder{ <0,0,0>,<0,0.3,0>,0.15 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<-0.3,0.35,-0.3>}
 
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.0 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<0.3,0.65,0.3> }
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.0 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<-0.3,0.65,0.3> }
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.0 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<0.3,0.65,-0.3> } 
 cone{<0, 0, 0>,0.15,<0.0,0.35,0>,0.0 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<-0.3,0.65,-0.3> } 
}  
  
// create left-top of the rocket
#declare lefttopsphere=difference{
 sphere{<0.0, 0.0, 0.0>, 0.6 pigment{color rgb<0.9 ,0.9 ,0.9>} translate<0,clock+4.5,0> }
 box{<-0.6,-0.6,-0.6>,<0.6, 0.6, 0.6> pigment{color rgb<0.5 ,0.5 ,0.5>} translate<.6,clock+4.5,0>} 
 box{<-0.6,-0.6,-0.6>,<0.6, 0.6, 0.6> pigment{color rgb<0.5 ,0.5 ,0.5>} translate<0,clock+5.1,0>}
 sphere{<0.0, 0.0, 0.0>, 0.5 pigment{color rgb<0.1 ,0.1 ,0.1>} translate<0,clock+4.5,0> }
}   
#declare lefttopcylinder=difference{ 
 cylinder{ <0,0,0>,<0,.6,0>,0.6 pigment{color rgb<0.9 ,0.9 ,0.9>} translate<0,clock+4.5,0>}
 box{<-0.6,-0.6,-0.6>,<0.6, 0.6, 0.6> pigment{color rgb<0.5 ,0.5 ,0.5>} translate<.6,clock+5,0>}
 cylinder{ <0,0,0>,<0,1,0>,0.5 open pigment{color rgb<0.1 ,0.1 ,0.1>} translate<0,clock+4.5,0>} 
}   
#declare lefttopcone=difference{ 
 cone{<0, 0, 0>,0.6,<0,1,0>,0.0 pigment{color rgb<0.9 ,0.9 ,0.9>} translate<0,clock+5.1,0> }
 box{<-0.6,-0.6,-0.6>,<0.6, 0.6, 0.6> pigment{color rgb<0.5 ,0.5 ,0.5>} translate<.6,clock+5.5,0>}
 cone{<0, 0, 0>,0.5,<0,1,0>,0.0 open pigment{color rgb<0.1 ,0.1 ,0.1>} translate<0,clock+5.1,0> }
}  

#declare leftcapsule=union{
 object{lefttopsphere}
 object{lefttopcylinder}
 object{lefttopcone}
 rotate<0,0,clock*2.1>
}   

// create right-top of the rocket
#declare righttopsphere=difference{
 sphere{<0.0, 0.0, 0.0>, 0.6 pigment{color rgb<0.9 ,0.9 ,0.9>} translate<0,clock+4.5,0> }
 box{<-0.6,-0.6,-0.6>,<0.6, 0.6, 0.6> pigment{color rgb<0.5 ,0.5 ,0.5>} translate<-.6,clock+4.5,0>} 
 box{<-0.6,-0.6,-0.6>,<0.6, 0.6, 0.6> pigment{color rgb<0.5 ,0.5 ,0.5>} translate<0,clock+5.1,0>}
 sphere{<0.0, 0.0, 0.0>, 0.5 pigment{color rgb<0.1 ,0.1 ,0.1>} translate<0,clock+4.5,0> }
}   
#declare righttopcylinder=difference{ 
 cylinder{ <0,0,0>,<0,.6,0>,0.6 pigment{color rgb<0.9 ,0.9 ,0.9>} translate<0,clock+4.5,0>}
 box{<-0.6,-0.6,-0.6>,<0.6, 0.6, 0.6> pigment{color rgb<0.5 ,0.5 ,0.5>} translate<-.6,clock+5,0>}
 cylinder{ <0,0,0>,<0,1,0>,0.5 open pigment{color rgb<0.1 ,0.1 ,0.1>} translate<0,clock+4.5,0>} 
}   
#declare righttopcone=difference{ 
 cone{<0, 0, 0>,0.6,<0,1,0>,0.0 pigment{color rgb<0.9 ,0.9 ,0.9>} translate<0,clock+5.1,0> }
 box{<-0.6,-0.6,-0.6>,<0.6, 0.6, 0.6> pigment{color rgb<0.5 ,0.5 ,0.5>} translate<-.6,clock+5.5,0>}
 cone{<0, 0, 0>,0.5,<0,1,0>,0.0 open pigment{color rgb<0.1 ,0.1 ,0.1>} translate<0,clock+5.1,0> }
}   

#declare rightcapsule=union{
 object{righttopsphere}
 object{righttopcylinder}
 object{righttopcone} 
 rotate<0,0,-(clock*2.1)>
} 

#declare silo=difference{
 cylinder{ <0,0,0>,<0,0.6,0>,0.45 pigment{color rgb<1 ,1 ,1>} translate<0,(clock/2.2)+3.45,0>}
 cylinder{ <0,0,0>,<0,0.6,0>,0.35 open pigment{color rgb<0.1 ,0.1 ,0.1>} translate<0,(clock/2.2)+3.45,0>}   
}  
 
#declare fullcone=union{
 cylinder{ <0,0,0>,<0,3,0>,0.45 pigment{color rgb<1 ,1 ,1>} translate<0,0.45,0>}
 object{innercones}
 object{outercones}
} 

//create right-side booster rocket
#declare rightinnercones=union{
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.08 pigment{color rgb<0.4 ,0.5 ,0.5>} }  
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.08 pigment{Blue} translate<0,0,0.3> } 
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.08 pigment{Blue} translate<0,0,-0.3> }
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.08 pigment{Blue} translate<0.3,0,0> }
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.08 pigment{Blue} translate<-0.3,0,0> }  
 
 cylinder{ <1,0,0>,<1,0.1,0>,0.15 pigment{Red} translate<0,0.35,0>}
 cylinder{ <1,0,0>,<1,0.1,0>,0.15 pigment{Red} translate<0,0.35,-0.3>}
 cylinder{ <1,0,0>,<1,0.1,0>,0.15 pigment{Red} translate<0,0.35,0.3>}
 cylinder{ <1,0,0>,<1,0.1,0>,0.15 pigment{Red} translate<-0.3,0.35,0>}
 cylinder{ <1,0,0>,<1,0.1,0>,0.15 pigment{Red} translate<0.3,0.35,0>}
}                    

#declare rightoutercones=union{
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<0.3,0,0.3> }
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<-0.3,0,0.3> }
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<0.3,0,-0.3> } 
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.08 pigment{color rgb<0.3 ,0.3 ,0.3>} translate<-0.3,0,-0.3> }
 
 cylinder{ <1,0,0>,<1,0.3,0>,0.15 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<0.3,0.35,0.3>}
 cylinder{ <1,0,0>,<1,0.3,0>,0.15 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<-0.3,0.35,0.3>}
 cylinder{ <1,0,0>,<1,0.3,0>,0.15 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<0.3,0.35,-0.3>}
 cylinder{ <1,0,0>,<1,0.3,0>,0.15 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<-0.3,0.35,-0.3>}
 
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.0 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<0.3,0.65,0.3> }
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.0 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<-0.3,0.65,0.3> }
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.0 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<0.3,0.65,-0.3> } 
 cone{<1, 0, 0>,0.15,<1,0.35,0>,0.0 pigment{color rgb<0.4 ,0.5 ,0.5>} translate<-0.3,0.65,-0.3> } 
}             

#declare rightfullcone=union{
 cylinder{ <1,0,0>,<1,3,0>,0.45 pigment{color rgb<1 ,1 ,1>} translate<0,0.45,0>}
 ovus{ 0.45, .1 pigment{color rgb<1 ,1 ,1>} translate<1,3.5,0>}
 object{rightinnercones}
 object{rightoutercones}
}   

//create bottom of rocket
#declare rocket_base=union{
 object{rightfullcone translate<-2,0,0>}
 object{fullcone} 
 object{rightfullcone}
}
   
object{leftcapsule translate<0,5,0>}  
object{rightcapsule translate<0,5,0>}    
object{silo translate<0,5,0>}
object {rocket_base translate<0,5,0> rotate<clock*4,0,clock*2>} 

#declare sat=difference{
 sphere{<0.0, 0.0, 0.0>, 0.4 pigment{color rgb<0.9 ,0.9 ,0.9>} translate<0,10.6,0> } 
 box{<-0.5,-0.5,-0.5>,<0.5, 0.5, 0.5> pigment{color rgb<0.5 ,0.5 ,0.5>} translate<0,10.78,0>}
 sphere{<0.0, 0.0, 0.0>, 0.6 pigment{color rgb<1 ,1 ,1>} translate<0,10.85,0> }
}    
#declare satellite=union{
 box{<-0.2,-0.2,-0.2>,<0.2, 0.2, 0.2> pigment{color rgb<.2 ,.2 ,.2>} translate<0,10,0>}
 object{sat}           
 box{<0,0,0>,<0.35, 0.01, 0.15> pigment{ color rgb<0 ,1 ,1>} translate<-0.55,10,0>}
 box{<0,0,0>,<0.35, 0.01, 0.15> pigment{ color rgb<0 ,1 ,1>} translate<0.2,10,0>}
 translate<0,(clock*1.4),0>
}   
object {satellite}  


 


  



