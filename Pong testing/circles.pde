class circles extends shapes{
  //global variables
  float circlex,circley,circlediameter;
  float movementx,movementy;
  float gravity=0.0;
  //
  
  
  circles () {
    circlex = centerx;
    circley = centery;
    circlediameter = displayWidth*1/41;
    this.movementx= random(-5,5);
    this.movementy=random(-5,5);
  }//end circles-pongball
  
  circles(float gravityparameter,float fireworkx, float fireworky) {
    circlex = fireworkx;
    circley = fireworky;
    circlediameter = displayWidth*1/41;
    this.movementx= random(-5,5);
    this.movementy=random(-5,5);
    this.gravity = gravityparameter;
  }
  
  void draw() {
    ellipse(circlex,circley,circlediameter,circlediameter);
    movement();
    bounce();
  }//end draw
  void movement () {
    movementy+= gravity;
   circlex+=movementx;
   circley+=movementy;
  }//end movement
  void bounce() {
    if (circlex + circlediameter*1/2 > displayWidth || circlex - circlediameter*1/2 < 0) {
      movementx*=-1;
      
    }
    if (circley + circlediameter*1/2 > (pongtable.squareheight + pongtable.squarey) || circley - circlediameter*1/2 < pongtable.squarey) {
      movementy*=-1;
      
    }
    
  }//end bounce
}//end circle class
