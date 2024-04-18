class ball extends circlez {
   float gravity=0.0;
  float ballx,bally,balldiameter;
  color ballcolour;
 
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
   ballx = mouseX;
   bally = mouseY;
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
  
 
  
}//end ball class
