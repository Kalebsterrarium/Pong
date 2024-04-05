class ball extends circlez {
   float gravity=0.0;
  float ballx,bally,balldiameter;
  ball () {
    this.ballx = circlex;
    this.bally = circley;
    this.balldiameter = circlediameter;
     movementx = random(-5,5);
   movementy = random(-5,5);
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
  }//end movement
  void bounce() {
    if (ballx + balldiameter*1/2 > displayWidth || ballx - balldiameter*1/2 < 0) {
      movementx*=-1;
      
    }
    if (bally + balldiameter*1/2 > (pongtable.squareheight + pongtable.squarey) || bally - balldiameter*1/2 < pongtable.squarey) {
      movementy*=-1;
      
    }
    
  }//end bounce
}//end ball class
