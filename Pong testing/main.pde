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

//
void setup() {
 
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
  
 pongball.draw();
 if (playernets[0].score[0] == true) {
 for ( int i =0;i< fireworks.length;i++) {
  fireworks[i] = new ball(0.981, pongball.ballx,pongball.bally);
}
playernets[0].score[0] = false;

 pongball = new ball();
 
 }
  
 if (playernets[1].score[1] == true) {
 
 for ( int i =0;i< fireworks.length;i++) {
  fireworks[i] = new ball(0.981, pongball.ballx,pongball.bally);
}
playernets[1].score[1] = false;
 pongball = new ball();
 }
 for ( int i =0;i< fireworks.length;i++) {
  fireworks[i].draw();
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
//end driver
