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
 lines[] goallines1 = new lines[10];
 lines[] goallines2 = new lines[10];
 Ball ghostBall;
paddle mypaddle, yourpaddle;
void setup() {
  fullScreen();
  menuX=0;
  menuY=0;
  menuWidth=displayWidth;
  menuHeight=displayHeight;
  //an object  is ... see the class
 
 myBall = new Ball();
 mypaddle = new paddle(0,myBall.balldiameter);
yourpaddle = new paddle(displayWidth, myBall.balldiameter);

  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball( displayWidth*-1, displayHeight*-1, 0.981);
  }
   linechange1 = mypaddle.tableheight;
  linechange2 =linechange1 + (yourpaddle.tabley - yourpaddle.tableheight)*1/10;
  for (int i=0; i < goallines1.length; i++) {
    goallines1[i] = new lines(linechange1,linechange2,mypaddle.netx);
  }
  for (int i=0; i < goallines2.length; i++) {
    goallines2[i] = new lines(linechange1,linechange2,yourpaddle.netx);
  }
 yourBall = new Ball();


  Ball yourBall = new Ball();
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
   fill(#FFFFFF);//BackGround Colour
 rect(menuX,menuY,menuWidth,menuHeight);//BackGround
 /*
  fill(player1goalcolour);//player1goal Colour
  stroke(#014D4E);
  strokeWeight(5);
 rect(player1goalx,player1goaly,player1goalwidth,player1goalheight);
 fill(player2goalcolour);//player2goal Colour
 rect(player2goalx,player2goaly,player2goalwidth,player2goalheight);

 */

 
 mypaddle.draw();
 yourpaddle.draw();

   myBall.tableyupdate(mypaddle.tabley,mypaddle.tableheight,mypaddle.tablewidth,mypaddle.tablex,mypaddle.paddlex,yourpaddle.paddlex,mypaddle.paddley,yourpaddle.paddley,mypaddle.paddlewidth, mypaddle.paddleheight, yourpaddle.paddleheight);
  if(myBall.ballx - (myBall.balldiameter/2) <=  player1goalx+player1goalwidth || yourBall.ballx - (yourBall.balldiameter/2) <=  player1goalx+player1goalwidth ) {
   //player1goalcolour = #014D4E ;
   
 } else {
   player1goalcolour = #30D5C8;
 }
 

     if(myBall.ballx - (myBall.balldiameter/2) >=  mypaddle.netx+mypaddle.netwidth && myBall.ballx - (myBall.balldiameter/2) <= mypaddle.paddlex  ) {
 
    for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(myBall.ballx, myBall.bally, 0.981);
    
   
  }
   myBall = new Ball();
 }
 if(myBall.ballx + (myBall.balldiameter*1/2)  >= yourpaddle.paddlex+yourpaddle.paddlewidth && myBall.ballx + (myBall.balldiameter/2) <= yourpaddle.netx) {
  
    for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(myBall.ballx, myBall.bally, 0.981);
    
    }
   myBall = new Ball();
  
 } 
 
 if(myBall.ballx + (myBall.balldiameter/2) >=  player2goalx || yourBall.ballx + (yourBall.balldiameter/2) >=  player2goalx ) {
   player2goalcolour = #014D4E ;
   
 } else {
   player2goalcolour = #30D5C8;
 }
 //

 for (int i=0; i < goallines1.length; i++) {
      
    goallines1[i] = new lines(linechange1,linechange2,mypaddle.netx);
    linechange1+= ((yourpaddle.tabley - yourpaddle.tableheight)*1/10);
    linechange2+=((yourpaddle.tabley - yourpaddle.tableheight)*1/10);
   
 if(linechange2 > yourpaddle.tabley + 0.01) {
      linechange1 =  mypaddle.tableheight;
      linechange2 = linechange1 + ((yourpaddle.tabley - yourpaddle.tableheight)*1/10) ;
    }
  }
  linechange1 =  mypaddle.tableheight;
  linechange2 = linechange1 + ((yourpaddle.tabley - yourpaddle.tableheight)*1/10) ;
  for (int i=0; i < goallines2.length; i++) {
    goallines2[i] = new lines(linechange1,linechange2,yourpaddle.netx);
    linechange1+= ((yourpaddle.tabley - yourpaddle.tableheight)*1/10);
    linechange2+=((yourpaddle.tabley - yourpaddle.tableheight)*1/10);
    if(linechange2 > yourpaddle.tabley + 0.01) {
      linechange1 = mypaddle.tableheight;
      linechange2 = linechange1 + ((yourpaddle.tabley - yourpaddle.tableheight)*1/10);
    }
  }
  linechange1 = mypaddle.tableheight;
  linechange2 =linechange1 + ((yourpaddle.tabley - yourpaddle.tableheight)*1/10) ;
 //
 for (int i=0; i < goallines1.length; i++) {
    goallines1[i].draw();
    
  }
   for (int i=0; i < goallines2.length; i++) {
    goallines2[i].draw();
    
  }
   //
  myBall.draw();
   for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }
 // yourBall.draw();
 
  
   
     mirror = (displayHeight)-(myBall.bally);
    // bad code for ball bounce on paddle
     if(myBall.ballx - myBall.balldiameter/2 < mypaddle.paddlex + mypaddle.paddlewidth  && myBall.ballx > mypaddle.paddlex && myBall.bally < mypaddle.paddley+mypaddle.paddleheight && myBall.bally > mypaddle.paddley) {
      myBall.xspeed *=-1;
    }
  if(myBall.ballx + myBall.balldiameter/2 > yourpaddle.paddlex   && myBall.ballx < yourpaddle.paddlex + yourpaddle.paddlewidth && myBall.bally < yourpaddle.paddley+yourpaddle.paddleheight && myBall.bally > yourpaddle.paddley) {
      myBall.xspeed *=-1;
    }
    
  
//ghost ball code
  if (ghostballon == true) {
   
   colorMode(HSB);
   fadedballcolour=color(hue(myBall.ballcolour),(saturation(myBall.ballcolour)-40),brightness(myBall.ballcolour));
ghostBall = new Ball(myBall.ballx,mirror,fadedballcolour);
   ghostBall.draw();
colorMode(RGB);
  } //end ghost ball
  
  
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

}//end draw

void keyPressed() {
  mypaddle.keypressedWASD();
  yourpaddle.keypressedARROW();
  
}
void keyReleased() {
  mypaddle.keyreleasedWASD();
  yourpaddle.keyreleasedARROW();
}
void mousePressed() {
 if (ghostballon == true) {
   ghostballon = false;
 } else {
   ghostballon = true;
 }
}
