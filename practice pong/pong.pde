

float menux,menuy,menuwidth,menuheight;
float cursorcolorx,cursorcolory,cursorcolordiameter;
void setup() {
  
   
  
  fullScreen();
  menux=0;
  menuy=0;
  menuwidth=displayWidth;
  menuheight=displayHeight;
  
  cursorcolordiameter=displayWidth*1/60;
}//end setup

void draw() {
  
  
  cursorcolorx=mouseX;
  cursorcolory=mouseY;
  
  fill(22,213,220);
  rect( menux,menuy,menuwidth,menuheight);
  fill(0);
  ellipse(cursorcolorx,cursorcolory,cursorcolordiameter,cursorcolordiameter);
}//end draw

void keyPressed() {
  
}//end keypressed




void mousePressed() {
  
}//end mousepressed
