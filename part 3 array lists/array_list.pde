import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//global variables
ArrayList<Shape> shapes = new ArrayList<Shape>();
//
void setup() {
  fullScreen();
  display();
  int balldiameter = displayWidth*1/65;
  color backGround = color(#FFFF00);
  
  PongTable pongTable = new PongTable (appwidth*0, appheight*2/10, appwidth, appheight*7/10, backGround);
  pongTable.updateSetup( balldiameter*2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 );
  //display - students to add
  //audio - Students to add
  //classes - students to add, hint: TABS ( teacher to add first) 
  //build local objects - students to add, i.e. start with ball, then pongtable, etc.
  
  shapes.add(pongTable); //Element 0, pongTable
//  shapes.add(leftPaddle); //Element 1, Left Paddle
 // shapes.add(rightPaddle); //Element 2, Right Paddle
 // shapes.add(ball); //Element 3, Ball
}//end setup
//
void draw() {
  for ( Shape s : shapes ) {
    s.draw();
  }
}//end draw
//
void keyPressed() {
  
}//end keypressed
//
void mousePressed() {
  
}//end mousepressed
