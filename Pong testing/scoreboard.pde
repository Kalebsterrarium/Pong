class scoreboard extends shapes {
  PFont font;
  String score = "0";
  float scorex,scorey,scorewidth,scoreheight;
  int scorecounter;
  scoreboard(float scoreboardstartparameter) {
     scorewidth = displayWidth*1/11;
    scorex = (scoreboardstartparameter == 0) ? centerx - scorewidth*2 : centerx + scorewidth ;
    scorey = 0;
    scoreheight= (displayHeight - pongtable.squareheight)/2;
 
    font = createFont("Calibri",20);
    textAlign(CENTER,CENTER);
    textFont(font,displayHeight);
  }//end scoreboard
  
  void draw() {
    
    textSize(40);
    fill(#FF0000);
    score();
    text(score,scorex,scorey,scorewidth,scoreheight);
    fill(0);
    
  }//end draw
 void score() {
    score = str(scorecounter);
  }//end score 
}//end scoreboard class
