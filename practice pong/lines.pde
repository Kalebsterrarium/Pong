class lines {
  float lineX1,lineY1,lineX2,lineY2;
  
  lines() {
    this.lineX1=player1goalx + player1goalwidth*1/9;
    this.lineY1=displayHeight*1/2;
    this.lineX2=(player1goalx + player1goalwidth) - player1goalwidth*1/9;
    this.lineY2=displayHeight*1/2;
  }
  
  lines(float linealgo1, float linealgo2) {
    this.lineX1=player1goalx + player1goalwidth*1/9;
    this.lineY1=linealgo1;
    this.lineX2=(player1goalx + player1goalwidth) - player1goalwidth*1/9;
    this.lineY2=linealgo2;
  }
  
  void draw() {
   
    stroke(#014D4E);
     strokeWeight(5);
    line(lineX1,lineY1,lineX2,lineY2);
    noStroke();
  }
  
  
}
