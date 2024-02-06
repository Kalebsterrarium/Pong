float menuX,menuY,menuWidth,menuHeight;
float menuBackGroundRed,menuBackGroundGreen,menuBackGroundBlue,Red,Green,Blue;



void setup() {
  fullScreen();
  
  menuX=0;
  menuY=0;
  menuWidth=displayWidth;
  menuHeight=displayHeight;
}

void draw() {
 menuBackGroundRed=48;
 menuBackGroundGreen=213;
  menuBackGroundBlue=200;
  fill(menuBackGroundRed,menuBackGroundGreen,menuBackGroundBlue);
  rect(menuX,menuY,menuWidth,menuHeight);
}

void keyPressed() {
  
}

void mousePressed() {
  
}
