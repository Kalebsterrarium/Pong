class lines extends shapes {
  float lineX1,lineY1,lineX2,lineY2;
  lines(float LX1, float LY1,float LX2,float LY2) {
    lineX1=LX1;
    lineY1=LY1;
    lineX2=LX2;
    lineY2=LY2;
  }
  void draw() {
   stroke(#00A8F0);
   strokeWeight(5);
  line(lineX1,lineY1,lineX2,lineY2);
  strokeWeight(1);
  stroke(0);
  }//end draw
  
  
}//end lines class 
