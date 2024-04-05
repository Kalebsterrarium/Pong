class paddle extends squares {
  float paddlex, paddley,paddlewidth,paddleheight;
  float movementparameter = 5 , paddleside;
  paddle(float paddlestartparameter) {
    paddlewidth= playernets[0].netwidth*1/7;
    paddleheight= screenbottom * 1/7;
    paddley= centery - paddleheight*1/2;
    this.paddlex = (paddlestartparameter == 0) ? playernets[0].netx + playernets[0].netwidth : playernets[1].netx - paddlewidth ;
    paddleside = paddlestartparameter;
  }//end paddle
  
  void draw() {
    fill(#00FF00);
    rect( paddlex, paddley,paddlewidth,paddleheight);
    fill(0);
    movement();
  }//end draw
  void movement() {
    
    if(down[int(paddleside)] == true) {
      if( paddley + paddleheight < pongtable.squarey + pongtable.squareheight) {
   paddley+= movementparameter;
      } else { 
        paddley = pongtable.squarey + pongtable.squareheight - paddleheight;
      }
    }
    if(up[int(paddleside)] == true) {
      if(paddley  > pongtable.squarey) {
   paddley-=movementparameter;
      } else {
        paddley = pongtable.squarey;
      }
    }
  }//end movement
}//end paddle class
