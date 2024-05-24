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
  color colourforeground = color(#FF0000);
  PongTable pongTable = new PongTable (appwidth*0, appheight*2/10, appwidth, appheight*7/10, backGround);
  pongTable.updateSetup( balldiameter*2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 );
   Balls ball = new Balls( pongTable.w*1/2, pongTable.y+(pongTable.h*1/2), balldiameter, balldiameter, colourforeground );
   Paddles leftPaddle = new Paddles (pongTable.leftnetx_top, ( pongTable.leftnety_bottom-pongTable.leftnety_top )/2 + pongTable.leftnety_top*1/2, balldiameter*1/2, ( pongTable.leftnety_bottom-pongTable.leftnety_top )/4, colourforeground);
  Paddles rightPaddle = new Paddles (pongTable.rightnetx_top, ( pongTable.rightnety_bottom-pongTable.rightnety_top )/2 + pongTable.rightnety_top*1/2, balldiameter*1/2, ( pongTable.rightnety_bottom-pongTable.rightnety_top )/4, colourforeground);
  leftPaddle.updateSetup( pongTable.w*1/2, pongTable.leftnetx_top, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ); //Execute ONCE
  rightPaddle.updateSetup( pongTable.w*1/2, pongTable.rightnetx_top, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ); //Execute ONCE
   ball.updateSetup( pongTable.x, pongTable.x+pongTable.w, pongTable.y, pongTable.y+pongTable.h, pongTable.middlepongtablex, leftPaddle.el, rightPaddle.er, leftPaddle.y, leftPaddle.y+leftPaddle.h, rightPaddle.y, rightPaddle.y+rightPaddle.h ); //Execute ONCE

  
  shapes.add(pongTable); //Element 0, pongTable
  shapes.add(leftPaddle); //Element 1, Left Paddle
 shapes.add(rightPaddle); //Element 2, Right Paddle
  shapes.add(ball); //Element 3, Ball
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
