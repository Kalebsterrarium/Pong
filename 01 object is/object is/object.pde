float menuX,menuY,menuWidth,menuHeight;
float menuBackGroundRed,menuBackGroundGreen,menuBackGroundBlue,Red,Green,Blue;



void setup() {
  fullScreen();
  menuX=0;
  menuY=0;
  menuWidth=displayWidth;
  menuHeight=displayHeight;
  //an object  is ... see the class
  Ball myBall = new Ball(); //myball = instance of Ball
  //Ball yourBall = new Ball();
  println("HELLO");
  exit(); //mimics garbages collection of all local variables
}
//garbage collection happens here
//
void draw() {
  //ball
  ballx=mouseX;
  bally=mouseY;
  balldiameter= displayHeight*1/60;
  //
  //menu
 menuBackGroundRed=48;
 menuBackGroundGreen=213;
  menuBackGroundBlue=200;
  //
  //menu draw
  fill(menuBackGroundRed,menuBackGroundGreen,menuBackGroundBlue);//BackGround Colour
  rect(menuX,menuY,menuWidth,menuHeight);//BackGround
  //
  //ball draw
  fill(#FF0000);//ball colour
  ellipse( ballx,bally,balldiameter,balldiameter);//ball
}

void keyPressed() {
  
}

void mousePressed() {
  
}
