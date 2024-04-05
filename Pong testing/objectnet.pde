class net extends squares {
  float netx,nety,netwidth,netheight;
  float linex1,liney1,linex2,liney2;
  net(float netstartparameter) {
 
    nety = pongtable.squarey;
    netwidth=pongtable.squarewidth*1/17;
    netheight=pongtable.squareheight;
    this.netx  = (netstartparameter == 0) ? screenleft : screenright - netwidth ;
  }//end net 
  
  void draw() {
    fill(#FF0000);
    rect(netx,nety,netwidth,netheight);
    fill(0);
  }
}//end net class 
