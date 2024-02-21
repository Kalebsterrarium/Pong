float menuX,menuY,menuWidth,menuHeight;
float menuBackGroundRed,menuBackGroundGreen,menuBackGroundBlue,Red,Green,Blue;
float player1goalx,player1goaly,player1goalwidth,player1goalheight;
float player2goalx,player2goaly,player2goalwidth,player2goalheight;
color player1goalcolour,player2goalcolour;
 Ball myBall; //both halves of constructor
 Ball[] fireworks = new Ball[25];
 Ball yourBall;
void setup() {
  fullScreen();
  menuX=0;
  menuY=0;
  menuWidth=displayWidth;
  menuHeight=displayHeight;
  //an object  is ... see the class
 myBall = new Ball();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball( displayWidth*-1, displayHeight*-1, 0.981);
  }
 yourBall = new Ball();

  //Ball yourBall = new Ball();
  player1goalx=0;
  player1goaly=0;
  player1goalwidth=displayWidth*1/8;
  player1goalheight=displayHeight;
  player2goalx=displayWidth*7/8;
  player2goaly=0;
  player2goalwidth=displayWidth*1/8;
  player2goalheight=displayHeight;
  
}//end setup
//
void draw() {
  //menu
   noStroke();
   fill(menuBackGroundRed,menuBackGroundGreen,menuBackGroundBlue);//BackGround Colour
 rect(menuX,menuY,menuWidth,menuHeight);//BackGround
 //
  fill(player1goalcolour);//player1goal Colour
  stroke(#014D4E);
  strokeWeight(5);
 rect(player1goalx,player1goaly,player1goalwidth,player1goalheight);
 fill(player2goalcolour);//player2goal Colour
 rect(player2goalx,player2goaly,player2goalwidth,player2goalheight);

 //
 if(myBall.ballx - (myBall.balldiameter/2) <=  player1goalx+player1goalwidth || yourBall.ballx - (yourBall.balldiameter/2) <=  player1goalx+player1goalwidth ) {
   player1goalcolour = #014D4E ;
 } else {
   player1goalcolour = #30D5C8;
 }
 if(myBall.ballx + (myBall.balldiameter/2) >=  player2goalx || yourBall.ballx + (yourBall.balldiameter/2) >=  player2goalx ) {
   player2goalcolour = #014D4E ;
   
 } else {
   player2goalcolour = #30D5C8;
 }
 //
  myBall.draw();
   for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }
  yourBall.draw();
  
  
  
  
  

  
  
  
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
  //ball draw
 // fill(#FF0000);//ball colour
 // ellipse( ballx,bally,balldiameter,balldiameter);//ball
}

void keyPressed() {
  
}

void mousePressed() {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(mouseX, mouseY, 0.981);
  }
}
