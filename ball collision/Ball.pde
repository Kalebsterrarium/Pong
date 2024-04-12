float fx, x,help,help1,help2;
int fx2,x2;


void setup() {
  fullScreen();
}//end setup 

void draw() {
    x++;
  help = displayWidth;
  help1=sq((2*x) - help);
  help2 = sq(displayWidth) - help1;
  fx= (sqrt(help2) - displayHeight)*-1/2;
  

  println(fx);
  line(x,fx,x,fx);
}//end draw 

void mousePressed() {
  
}//end mousepressed 

void keyPressed() {
  
}//end keyPressed
