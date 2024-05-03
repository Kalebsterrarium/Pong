class ball extends circlez {
   float gravity=0.0;
  float ballx,bally,balldiameter,ballradius;
  color ballcolour;
  float maththingy;
 float ballcollisionX[] = new float[2];
    float ballcollisionY[] = new float[2];
     float ballcollisionX2[] = new float[3];
    float ballcollisionY2[] = new float[3];
    int BCcounter1[] = new int [4];
    int BCcounter2[] = new int [4];
  ball () {
    this.ballx = circlex;
    this.bally = circley;
    this.balldiameter = circlediameter;
    this.ballcolour = #000000; 
    ballradius = balldiameter/2;
     movementx = int(random(-9,9));
   movementy = int(random(-9,9)); 
    maththingy = ballradius / sqrt(2);
    for(int i=0; i<2; i++) {
    ballcollisionX[i] =  displayWidth*1/2 + (maththingy * pow(-1,i));  
    ballcollisionY[i] =  displayHeight*1/2 + (maththingy * pow(-1,i));
    }
    for(int i=0; i<3; i++) {
    ballcollisionX2[i] =  displayWidth*1/2 + (ballradius * cos(PI*i));  
    ballcollisionY2[i] =  displayHeight*1/2 + (ballradius * cos(PI*i));
    }
    for (int n=0;n<4;n++) {
  BCcounter1[n]=  int(0.25*(cos(PI*n) -1 + 2*n));
  BCcounter2[n]=  int((0.5*cos((PI*float(n)))) + 0.5);
  println( BCcounter1[n]);
  // println( BCcounter2[n]);
}
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
    ballcollision();
    bounce();
   
   
  }//end draw
  void movement () {
    movementy+= gravity;
    movementx =0;
   movementy=0;
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
    if((ballx - balldiameter*1/2 >= playerpaddles[0].paddlex && ballx - balldiameter*1/2 <= playerpaddles[0].paddlex + playerpaddles[0].paddlewidth || ballx >= playerpaddles[0].paddlex && ballx <= playerpaddles[0].paddlex + playerpaddles[0].paddlewidth || ballx - balldiameter*1/3 >= playerpaddles[0].paddlex && ballx - balldiameter*1/3 <= playerpaddles[0].paddlex + playerpaddles[0].paddlewidth) && bally + balldiameter*1/2 >= playerpaddles[0].paddley && bally - balldiameter*1/2 <= playerpaddles[0].paddley + playerpaddles[0].paddleheight ) {
      movementx*=-1;
      ballx = playerpaddles[0].paddlex + playerpaddles[0].paddlewidth + balldiameter*1/2;
      println("ball bounce");
    } //else println("not bouncing");
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
  void ballcollision() {
    
   
    
    
    if(gravity == 0) {
      for ( int i=0; i< 4; i++) {
    fill(#FF0000);
stroke(#FF0000);
strokeWeight(5);

line( ballcollisionX[BCcounter1[i]] ,ballcollisionY[BCcounter2[i]], ballcollisionX[BCcounter1[i]],ballcollisionY[BCcounter2[i]]);
line( ballcollisionX2[BCcounter1[i]] ,ballcollisionY2[BCcounter1[i]], ballcollisionX2[BCcounter2[i]],ballcollisionY2[BCcounter2[i]]);

line(displayWidth*1/2 + pongball.balldiameter*1/2 ,displayHeight*1/2 ,displayWidth*1/2 + pongball.balldiameter*1/2 ,displayHeight*1/2 );
line(displayWidth*1/2 - pongball.balldiameter*1/2 ,displayHeight*1/2 ,displayWidth*1/2 - pongball.balldiameter*1/2,displayHeight*1/2  );
line(displayWidth*1/2  ,displayHeight*1/2  + pongball.balldiameter*1/2,displayWidth*1/2 ,displayHeight*1/2  + pongball.balldiameter*1/2);
line(displayWidth*1/2  ,displayHeight*1/2  - pongball.balldiameter*1/2,displayWidth*1/2,displayHeight*1/2  - pongball.balldiameter*1/2 );


stroke(0);
strokeWeight(1);
fill(0);
      }
    }
  }//end ballcollision
 
  
}//end ball class
