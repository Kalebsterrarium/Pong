class lines {
  float lineX1,lineY1,lineX2,lineY2;
  
  
  
  lines(float linealgo1, float linealgo2, float goallinestartparameter) {
    this.lineX1= (goallinestartparameter < displayWidth*1/2) ? mypaddle.netwidth*1/9 : (yourpaddle.netx ) ;
    this.lineY1=linealgo1;
    this.lineX2=(goallinestartparameter < displayWidth*1/2) ? mypaddle.netwidth : displayWidth - yourpaddle.netwidth*1/9;
    this.lineY2=linealgo2;
  }
  
  void draw() {
   
    stroke(#014D4E);
     strokeWeight(5);
    line(lineX1,lineY1,lineX2,lineY2);
    noStroke();
  }
  
  
}
