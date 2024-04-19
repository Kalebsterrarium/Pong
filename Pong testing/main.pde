//global variables
ball pongball;
ball[] fireworks = new ball[10];
squares pongtable;
net[] playernets = new net[2];
paddle[] playerpaddles = new paddle[2];
boolean up[] = new boolean[2];
boolean down[] = new boolean[2];
lines[] goalLines = new lines[20];
scoreboard[] playerboard = new scoreboard[2];
float LX1,LY1,LX2,LY2;
float Fx,Fx2,XDraw;
 float functionStep1, functionStep2, functionStep3, functionStep4, functionStep5, functionStep6;
 int XConversion,ballaniDraw;
 float ballaniY[] = new float[88];
 float ballaniX[] = new float[88];
//
void setup() {
  for(float XVari=914;XVari < 1001;XVari++) {
    functionStep1 = 2*XVari;
    functionStep2= functionStep1 - displayWidth;
    functionStep3=sq(functionStep2);
    functionStep4=sq((displayWidth/67));
    functionStep5=functionStep4 - functionStep3;
    functionStep6= (sqrt(functionStep5))*-1/2;
    Fx= functionStep6 + displayHeight/2;
    XConversion = int(XVari);
    ballaniY[XConversion-914] = Fx;
    ballaniX[XConversion-914] = XVari;
   }
  fullScreen();
 
  pongtable = new squares();
pongball = new ball();

for ( int i =0;i< fireworks.length;i++) {
  fireworks[i] = new ball(0.981, displayWidth*-1,displayHeight*-1);
}
 
  for ( int i=0;i<playernets.length;i++) {
    
   playernets[i] = new net(i);
   
  }
  for ( int i=0;i<playerpaddles.length;i++) {
    
   playerpaddles[i] = new paddle(i);
   
  }
  LX1= 0;
    LY1=pongtable.squarey;
    LX2= playernets[0].netwidth;
    LY2= LY1 + pongtable.squareheight*1/10;
  for ( int i =0;i< goalLines.length;i++) {
    
  goalLines[i] = new lines(LX1,LY1,LX2,LY2);
  if(i < 9) {
    LY1+=pongtable.squareheight*1/10;
    LY2+=pongtable.squareheight*1/10;
  } else if (i == 9) {
    LX1= playernets[1].netx;
    LY1=pongtable.squarey;
    LX2= displayWidth;
    LY2= LY1 + pongtable.squareheight*1/10;
  } else if (i > 9) {
 LY1+=pongtable.squareheight*1/10;
    LY2+=pongtable.squareheight*1/10;
  }
}
for ( int i =0;i< playerboard.length;i++) {
  playerboard[i] = new scoreboard(i);
}
}//end setup
//
void draw() {
  background(#000000);
  pongtable.draw();
  for ( int i=0;i<playerpaddles.length;i++) {
   playerpaddles[i].draw();
  }
  for ( int i=0;i<playernets.length;i++) {
   playernets[i].draw();
  }
  if ( playernets[0].score[0] == false &&  playernets[1].score[1] == false) {
    pongball.draw();
    
  }
  for ( int i =0;i< fireworks.length;i++) {
  fireworks[i].draw();
} 
 if (playernets[0].score[0] == true) {
   if(ballaniDraw ==0) {
 for ( int i =0;i< fireworks.length;i++) {
  fireworks[i] = new ball(0.981, pongball.ballx,pongball.bally);
}
   }
ballanimation();
playernets[0].score[0] = false;
if ( ballaniDraw == ballaniX.length) {
playerboard[1].scorecounter++;

 pongball = new ball();
}
 }
  
 if (playernets[1].score[1] == true) {
 if (ballaniDraw == 0) {
 for ( int i =0;i< fireworks.length;i++) {
  fireworks[i] = new ball(0.981, pongball.ballx,pongball.bally);
}
 }
ballanimation();
playernets[1].score[1] = false;

if ( ballaniDraw == ballaniX.length) {
playerboard[0].scorecounter++;
 pongball = new ball();
}
 }
 
 

  for ( int i =0;i< goalLines.length;i++) {
  goalLines[i].draw();
}
for ( int i =0;i< playerboard.length;i++) {
  playerboard[i].draw();
}


}//end draw
//
void mousePressed() {

}//end mousepressed
//
void keyPressed() {
  if ( key == 'w' || key == 'W') up[0] = true; 
  if ( key == 's' || key == 'S') down[0] = true;
  if ( key==CODED & keyCode==UP) up[1] = true; 
  if ( key==CODED & keyCode==DOWN) down[1] = true;


}//end keypressed

void keyReleased() {
  if ( key == 'w' || key == 'W') up[0] = false; 
  if ( key == 's' || key == 'S') down[0] = false;
  if ( key==CODED & keyCode==UP) up[1] = false; 
  if ( key==CODED & keyCode==DOWN) down[1] = false;
}
//
 void ballanimation() {
    
  
    
    for( int i=0;i < ballaniDraw;i++) {
      strokeWeight(5);
    line(ballaniX[i],ballaniY[i],ballaniX[i],ballaniY[i]);
     line(ballaniX[i],displayHeight-ballaniY[i],ballaniX[i],displayHeight-ballaniY[i]);
     strokeWeight(0);
    }
   ballaniDraw++;
   if (ballaniDraw > ballaniX.length) {
     ballaniDraw =0;
   }
    
    
  }//end ballanimation
  //
//end driver
