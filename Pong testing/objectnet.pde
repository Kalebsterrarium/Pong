class net extends squares {
  float netx,nety,netwidth,netheight;
  float linex1,liney1,linex2,liney2;
  float netside;
  boolean[] score = new boolean[2];
 
  net(float netstartparameter) {
 
    nety = pongtable.squarey;
    netwidth=pongtable.squarewidth*1/17;
    netheight=pongtable.squareheight;
    this.netx  = (netstartparameter == 0) ? screenleft : screenright - netwidth ;
    netside = netstartparameter;
  }//end net 
  
  void draw() {
    fill(#FF0000);
    rect(netx,nety,netwidth,netheight);
    fill(0);
    score();
  }
  
  void score() {
    if (netside == 0) {
      if ( pongball.ballx - pongball.balldiameter*1/2 < netx + netwidth) {
        score[0] =true;
      }
    } else {
      if (  pongball.ballx + pongball.balldiameter*1/2 > netx) {
        
        score[1] = true;
      }
    }
  }
}//end net class 
