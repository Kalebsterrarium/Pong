class paddle {
//
//global variables
float tablex,tabley,tablewidth,tableheight;
float netx, nety, netwidth, netheight;
float paddlex,paddley,paddlewidth,paddleheight;
color paddlecolour;
//
//overloaded contructor
//purpose: left and right paddles
paddle(float paddlestartparameter, float ballDiameterParameter) {
  netwidth = ballDiameterParameter * 3;
  paddlewidth= ballDiameterParameter * 1/3;
  tabley=displayHeight/10;
  tableheight= displayHeight * 8/10;
  if (paddlestartparameter == 0) netx = paddlestartparameter;
  if (paddlestartparameter == displayWidth) netx = paddlestartparameter - netwidth*2 - paddlewidth;
  this.paddlex=netx+ netwidth;
  if (paddlestartparameter == displayWidth) netx = paddlestartparameter - netwidth;
  this.paddley= tabley + (tableheight/2) - (paddleheight/2);
  
  paddleheight=tableheight/5;
  paddlecolour = #000000;
 
  
  
  
  
}
//
void draw() {
fill(paddlecolour);
paddles();
fill(0);

















}//end draw
//
//voids and return
void paddles() {

rect(paddlex,paddley,paddlewidth,paddleheight);
//rect();


}//end paddles
void movepaddledown() {
  paddley+= paddletraveldistance;// moves paddle down
}
void movepaddleup() {
  paddley-= paddletraveldistance;// moves paddle up
}
//
}//end paddle
 
