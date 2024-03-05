float menuX,menuY,menuWidth,menuHeight;
float menuBackGroundRed,menuBackGroundGreen,menuBackGroundBlue,Red,Green,Blue;
float player1goalx,player1goaly,player1goalwidth,player1goalheight;
float player2goalx,player2goaly,player2goalwidth,player2goalheight;
color player1goalcolour,player2goalcolour,fadedballcolour;
float linechange1, linechange2;
float mirror;
boolean ghostballon = false;
 Ball myBall; //both halves of constructor
 Ball[] fireworks = new Ball[25];
 Ball yourBall;
 lines[] goallines = new lines[3];
 Ball ghostBall;
//paddle mypaddle, yourpaddle;
void setup() {
  fullScreen();
  menuX=0;
  menuY=0;
  menuWidth=displayWidth;
  menuHeight=displayHeight;
  //an object  is ... see the class
 myBall = new Ball();
 
// mypaddle = new paddle(0);
// yourpaddle = new paddle(width);
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball( displayWidth*-1, displayHeight*-1, 0.981);
  }
  for (int i=0; i < goallines.length; i++) {
    goallines[i] = new lines(player1goalx + player1goalwidth*1/9,displayHeight*1/2,(player1goalx + player1goalwidth) - player1goalwidth*1/9,displayHeight*1/2);
  }
 
 yourBall = new Ball();


  //Ball yourBall = new Ball();
  player1goalx=0;
  player1goaly=0;
  player1goalwidth=displayWidth*1/14;
  player1goalheight=displayHeight;
  player2goalx=displayWidth*13/14;
  player2goaly=0;
  player2goalwidth=displayWidth*1/14;
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
 
     if(myBall.ballx - (myBall.balldiameter/2) <=  player1goalx+player1goalwidth   ) {
  
    for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(myBall.ballx, myBall.bally, 0.981);
    
  }
 }
 if(yourBall.ballx - (yourBall.balldiameter/2) <=  player1goalx+player1goalwidth) {
   
    for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(yourBall.ballx, yourBall.bally, 0.981);
    }
    
 } 
 
 if(myBall.ballx + (myBall.balldiameter/2) >=  player2goalx || yourBall.ballx + (yourBall.balldiameter/2) >=  player2goalx ) {
   player2goalcolour = #014D4E ;
   
 } else {
   player2goalcolour = #30D5C8;
 }
 //
 for (int i=0; i < goallines.length; i++) {
    goallines[i].draw();
    
  }
   for (int i=0; i < goallines.length; i++) {
    goallines[i] = new lines(displayWidth*1/3,displayHeight*1/3,displayWidth*2/3,displayHeight*2/3);
    
  }
  myBall.draw();
   for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }
  yourBall.draw();
 
  
   
     mirror = (displayHeight)-(myBall.bally);
    
     
 
    
  
println(ghostballon);
  if (ghostballon == true) {
   
   colorMode(HSB);
   println(saturation(myBall.ballcolour));
   println(hue(myBall.ballcolour));
   println(brightness(myBall.ballcolour));
   fadedballcolour=color(hue(myBall.ballcolour),(saturation(myBall.ballcolour)-40),brightness(myBall.ballcolour));
ghostBall = new Ball(myBall.ballx,mirror,fadedballcolour);
   ghostBall.draw();
   println(saturation(ghostBall.ballcolour));
   println(hue(ghostBall.ballcolour));
   println(brightness(ghostBall.ballcolour));
colorMode(RGB);
  } 
  
  
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
 if (ghostballon == true) {
   ghostballon = false;
 } else {
   ghostballon = true;
 }
}
