class ball extends circlez {
   float gravity=0.0;
  float ballx,bally,balldiameter;
  ball () {
    this.ballx = circlex;
    this.bally = circley;
    this.balldiameter = circlediameter;
     movementx = int(random(-9,9));
   movementy = int(random(-9,9));
  }//end ball 
  
  ball(float gravityparameter, float scorex, float scorey) {
    this.ballx = scorex;
    this.bally = scorey;
    this.balldiameter = 1/(random(43,61));
    gravity = gravityparameter;
  }
  void draw() {
    
    ellipse(ballx,bally,balldiameter,balldiameter);
    movement();
    bounce();
  }//end draw
  void movement () {
    movementy+= gravity;
   ballx+=movementx;
   bally+=movementy;
   if ( movementx == 0) movementx = int(random(-9,9));
    if ( movementy == 0) movementy = int(random(-9,9));
   if ( movementx < 5 && movementx > 0) {
     while(movementx < 5) {
    movementx = int(random(-9,9));
     }
   } else if (movementx > -5 && movementx < 0 ) {
      while(movementx > -5) {
    movementx = int(random(-9,9));
     }
   }
   if ( movementy < 5 && movementy > 0) {
   while(movementy < 5) {
    movementy = int(random(-9,9));
     }
   } else if (movementy > -5 && movementy < 0 ) {
     while(movementy > -5) {
    movementy = int(random(-9,9));
     }
   }
   
  }//end movement
  void bounce() {
    if(ballx - balldiameter*1/2 <= playerpaddles[0].paddlex + playerpaddles[0].paddlewidth && ballx - balldiameter*1/2 >= playerpaddles[0].paddlex && bally  >= playerpaddles[0].paddley && bally  <= playerpaddles[0].paddley + playerpaddles[0].paddleheight ) {
      movementx*=-1;
    }
 if (ballx + balldiameter*1/2 >= playerpaddles[1].paddlex && ballx + balldiameter*1/2 <= playerpaddles[1].paddlex + playerpaddles[1].paddlewidth && bally  >= playerpaddles[1].paddley && bally  <= playerpaddles[1].paddley + playerpaddles[1].paddleheight ) {
   movementx*=-1;
 }
    if (ballx + balldiameter*1/2 > displayWidth || ballx - balldiameter*1/2 < 0) {
      movementx*=-1;
      
    }
    if (bally + balldiameter*1/2 > (pongtable.squareheight + pongtable.squarey) || bally - balldiameter*1/2 < pongtable.squarey) {
      movementy*=-1;
      
    }
    
  }//end bounce
}//end ball class
