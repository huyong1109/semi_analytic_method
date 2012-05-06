//*******************************************
// This is the Scilab script for Exercise 8.
//
// Use the help facility for more information 
// on individual functions used.
//
// Author: J. Kaempf, 2008
//********************************************
clf(); set("figure_style","new"); 
a=get("current_axes"); a.parent.figure_size= [700,350]; xset('pixmap',1);

// read input data
eta=read("eta.dat",-1,51); eta0=read("eta0.dat",-1,51);

x = (1:1:51)'; y = (1:1:51)'; // location vectors  
ntot = 150; // total number of frames

for n = 1:ntot // animation loop
scf(0);clf(); xset('wwpc');

// grab respective data block

jtop = (n-1)*51+1; jbot = jtop+50; 
etac = eta(jtop:jbot,1:51); 

plot3d(x,y,1000*(etac-eta0),50,50,'',[4,1,0],[1,51,1,51,-1,1]) // 3d plot
xset('wshow');

// save frames as GIF files (optional)
//if n < 10 then
//  xs2gif(0,'ex9b100'+string(n)+'.gif')
//else
//  if n < 100 then
//    xs2gif(0,'ex9b10'+string(n)+'.gif')
//  else
//    xs2gif(0,'ex9b1'+string(n)+'.gif')
//  end
// end

end; // end of animation loop

