class ball extends circlez {
   float gravity=0.0;
  float ballx,bally,balldiameter;
  color ballcolour;
 float XVari,Fx,Fx2;
  ball () {
    this.ballx = circlex;
    this.bally = circley;
    this.balldiameter = circlediameter;
    this.ballcolour = #000000; 
     movementx = int(random(-9,9));
   movementy = int(random(-9,9));
  }//end ball 
  
  ball(float gravityparameter, float scorex, float scorey) {
    this.ballx = scorex;
    this.bally = scorey;
    this.balldiameter = displayWidth* (1/random(41,93));
    this.ballcolour = color(random(255),random(255),random(255));
    gravity = gravityparameter;
    movementy = int(random(-9,9));
  }
  void draw() {
    fill(ballcolour);
    ellipse(ballx,bally,balldiameter,balldiameter);
    fill(0);
    movement();
    bounce();
  }//end draw
  void movement () {
    movementy+= gravity;
   ballx+=movementx;
   bally+=movementy;
  
   if ( movementx == 0) movementx = int(random(-9,9));
   if ( movementx < 5 && movementx > 0) {
     while(movementx < 5) {
    movementx = int(random(-9,9));
    
     }
   } else if (movementx > -5 && movementx < 0 ) {
      while(movementx > -5) {
    movementx = int(random(-9,9));
     }
   }
   
     if ( movementy == 0) movementy = int(random(-9,9));
     if(gravity == 0) {
   if ( movementy < 5 && movementy > 0) {
   while(movementy < 5) {
    movementy = int(random(-9,9));
     }
   } else if (movementy > -5 && movementy < 0 ) {
     while(movementy > -5) {
    movementy = int(random(-9,9));
     }
   }
     } 
     
  }//end movement
  void bounce() {
    if(ballx - balldiameter*1/2 >= playerpaddles[0].paddlex  && ballx - balldiameter*1/2 <= playerpaddles[0].paddlex + playerpaddles[0].paddlewidth && bally + balldiameter*1/2 >= playerpaddles[0].paddley && bally + balldiameter*1/2 <= playerpaddles[0].paddley + playerpaddles[0].paddleheight ) {
      movementx*=-1;
      ballx = playerpaddles[0].paddlex + playerpaddles[0].paddlewidth + balldiameter*1/2;
    }
 if (ballx + balldiameter*1/2 >= playerpaddles[1].paddlex && ballx + balldiameter*1/2 <= playerpaddles[1].paddlex + playerpaddles[1].paddlewidth && bally  >= playerpaddles[1].paddley && bally - balldiameter*1/2  <= playerpaddles[1].paddley + playerpaddles[1].paddleheight ) {
   movementx*=-1;
    ballx = playerpaddles[1].paddlex - balldiameter*1/2;
 }
    if (ballx + balldiameter*1/2 > displayWidth || ballx - balldiameter*1/2 < 0) {
      movementx*=-1;
      
    }
    if (bally + balldiameter*1/2 > (pongtable.squareheight + pongtable.squarey) || bally - balldiameter*1/2 < pongtable.squarey) {
      movementy*=-1;
      
    }
    
  }//end bounce
  
  void ballanimation(float functionStep1, float functionStep2, float functionStep3, float functionStep4, float functionStep5, float functionStep6) {
    XVari++;
    functionStep1 = 2*XVari;
    functionStep2= functionStep1 - displayWidth;
    functionStep3=sq(functionStep2);
    functionStep4=sq((displayWidth/22));
    functionStep5=functionStep4 - functionStep3;
    functionStep6= (sqrt(functionStep5))*-1/2;
    Fx= functionStep6 + displayHeight/2;
  }//end ballanimation
}//end ball class
