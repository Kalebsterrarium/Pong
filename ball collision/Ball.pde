float fx, x=850,help,help1,help2,help3,help4,help5;
float fx2,x2=850;
float fg;
float linexvari,linetophalfy,linebottomhalfy;
float radius;
void setup() {
  fullScreen();
  radius = displayWidth/42.0;
}//end setup 

void draw() {
  
    x+=1;
    x2+=1;
  help = 2*x;
  help1=help - ((displayWidth));
  help2 = sq(help1);
  help3= sq((displayWidth/21));
  help4= help3 -help2;
  
  help5= (sqrt(help4) )*-1/2;
  fx=help5 + displayHeight/2;
  fx2=((sqrt(sq((displayWidth/42.0))-sq((2*x2)-displayWidth)))*-1/2)+displayHeight/2;
  fg= displayHeight/2 - help5;
//println(x + "-This is X");
 // println(fx + "This is Y");
 // println(fx - displayHeight/2);
 // println((displayWidth/42.0)/( sqrt(2)));
 // println(displayWidth);
 
 // println(fx2);
  //println(displayWidth);
  linexvari=x;
  linetophalfy=fx;
  linebottomhalfy=fg;
   ellipse(displayWidth*1/2,displayHeight*1/2,displayWidth/21,displayWidth/21);
  line(x,fx,x,fx);//starts at ~850 ,ends at ~1000
  line(x,fg,x,fg);
  line(900,0,900,displayHeight);
  line(0,displayHeight/2,displayWidth,displayHeight/2);
  strokeWeight(3);
 // line(x2,(displayHeight*1/2)-((displayWidth/42.0)/sqrt(2)),x2,(displayHeight/2)-((displayWidth/42.0)/sqrt(2)));
   line( displayWidth*1/2 - (radius-(sqrt(8*sq(radius)))/4),(displayHeight*1/2)+((displayWidth/42.0)/sqrt(2)),(radius-(sqrt(8*sq(radius)))/4)+ displayWidth*1/2,(displayHeight/2)+((displayWidth/42.0)/sqrt(2)));
   line(32+displayWidth*1/2,507,32+displayWidth*1/2,507);
   line(displayWidth*1/2 - 32,displayHeight*1/2 + 32 ,displayWidth*1/2 - 32,displayHeight*1/2 + 32);
  
  strokeWeight(1);
  //println(x - displayWidth*1/2);
//  println(mouseX);
  //println(radius);
  //println(radius-(sqrt(8*sq(radius)))/4);
  if ( x == displayWidth*1/2 - 32) println(fx);
  println(507-displayHeight/2 + 45.7*2);
  for (int i=0;i<2; i++) {
    println(pow(-1,i));
  }
}//end draw 

void mousePressed() {
  
}//end mousepressed 

void keyPressed() {
  
}//end keyPressed
