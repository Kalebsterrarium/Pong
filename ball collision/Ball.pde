float fx, x=850,help,help1,help2,help3,help4,help5;
int fx2,x2;
float fg;
float linexvari,linetophalfy,linebottomhalfy;
void setup() {
  fullScreen();
}//end setup 

void draw() {
    x+=1;
  help = 2*x;
  help1=help - ((displayWidth));
  help2 = sq(help1);
  help3= sq((displayWidth/21));
  help4= help3 -help2;
  
  help5= (sqrt(help4) )*-1/2;
  fx=help5 + displayHeight/2;
  fg= displayHeight/2 - help5;
println(x);
  println(fx);
  println(displayWidth);
  linexvari=x;
  linetophalfy=fx;
  linebottomhalfy=fg;
  line(x,fx,x,fx);//starts at ~850 ,ends at ~1000
  line(x,fg,x,fg);
  line(900,0,900,displayHeight);
}//end draw 

void mousePressed() {
  
}//end mousepressed 

void keyPressed() {
  
}//end keyPressed
