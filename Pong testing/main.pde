//global variables
circles pongball;
circles[] fireworks = new circles[10];
squares pongtable;
//
void setup() {
 
  fullScreen();
  pongtable = new squares();
pongball = new circles();
for ( int i =0;i< fireworks.length;i++) {
  fireworks[i] = new circles(0.981, 0,0);
}
}//end setup
//
void draw() {
  background(#000000);
  pongtable.draw();
  
 pongball.draw();
 
 /*
  for ( int i =0;i< fireworks.length;i++) {
  fireworks[i].draw();
}
*/

}//end draw
//
void mousePressed() {
  
}//end mousepressed
//
void keyPressed() {
  
}//end keypressed
//
//end driver
