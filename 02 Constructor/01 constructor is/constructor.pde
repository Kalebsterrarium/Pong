float menuX,menuY,menuWidth,menuHeight;
float menuBackGroundRed,menuBackGroundGreen,menuBackGroundBlue,Red,Green,Blue;



void setup() {
  fullScreen();
  menuX=0;
  menuY=0;
  menuWidth=displayWidth;
  menuHeight=displayHeight;
  //an object  is ... see the class
  Ball myBall = new Ball(); // line = 1/2 of constructor
  //population of object variables = other 1/2 of constructor
  myBall.ballx = displayWidth*1/2; //spawn myBall in the middle of the screen
  myBall.bally = displayHeight*1/2;
  myBall.balldiameter = displayHeight*1/60;
  myBall.ballcolour = color(random(0,255),random(255),random(255));
  //code that uses object variables
  fill(myBall.ballcolour);//CAUTION: must reset defaults
  ellipse(myBall.ballx,myBall.bally,myBall.balldiameter,myBall.balldiameter);
  fill(0);
  //Ball yourBall = new Ball();
 // yourBall.x=
  
}
//
void draw() {
  //ball
  //ballx=mouseX;
  //bally=mouseY;
 // balldiameter= displayHeight*1/60;
  //
  //menu
 menuBackGroundRed=48;
 menuBackGroundGreen=213;
  menuBackGroundBlue=200;
  //
  //menu draw
 // fill(menuBackGroundRed,menuBackGroundGreen,menuBackGroundBlue);//BackGround Colour
 //rect(menuX,menuY,menuWidth,menuHeight);//BackGround
  //
  //ball draw
 // fill(#FF0000);//ball colour
 // ellipse( ballx,bally,balldiameter,balldiameter);//ball
}

void keyPressed() {
  
}

void mousePressed() {
  
}
