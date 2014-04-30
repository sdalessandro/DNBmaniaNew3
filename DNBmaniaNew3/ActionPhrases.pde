class ActionPhrases {

  int combo;
  String score;
  float totalScore, perfectScore, greatScore, goodScore, poorScore, booScore, missScore, scoreMultiplier;
  int perfectUpper, perfectLower, greatUpper, greatLower, goodUpper, goodLower, poorUpper, poorLower;
  PFont scoreFont, comboFont, phraseFont;
  
  boolean shouldDraw;
  float alpha;
  String currentText;
  int currentX, currentY;
  color currentColor;

  LeftArrow[] leftArrowArray;
  DownArrow[] downArrowArray;
  UpArrow[] upArrowArray;
  RightArrow[] rightArrowArray;  

  ActionPhrases() {
    shouldDraw = false;
    alpha = 255;

    combo = 0;

    scoreFont = loadFont("Prototype-55.vlw");
    comboFont = loadFont("Prototype-45.vlw");
    phraseFont = loadFont("Breakaway-30.vlw");

    totalScore   = 0;
    perfectScore = 100;
    greatScore   = 75;
    goodScore    = 50;
    poorScore    = 25;
    missScore    = 0;

    perfectUpper = 108;
    perfectLower = 92;
    greatUpper   = 115;
    greatLower   = 85;
    goodUpper    = 123;
    goodLower    = 77;
    poorUpper    = 130;
    poorLower    = 70;
  }

  void giveArrays(LeftArrow[] l, DownArrow[] d, UpArrow[] u, RightArrow[] r) {
    leftArrowArray = l;
    downArrowArray = d;
    upArrowArray = u;
    rightArrowArray = r;
  }

  void display() {
    //Score
    textAlign(CENTER);
    score = nf(totalScore, 8, 0);
    fill(255);
    textFont(scoreFont, 55);
    text(score, 150, height-15);  
    //Combo
    if ( combo == 0) {
      textFont(comboFont, 40);
      text("NO COMBO", width-150, height-18);
    }
    else {
      textFont(comboFont, 40);
      text("x"+nf(combo, 3, 0), width-230, height-18);
      text("COMBO", width-100, height-18);
    }

    if (keyPressed && keyCode == LEFT) {    
      for (int i = 0; i < leftArrowArray.length; i++) 
      {
        if ((leftArrowArray[i].arrowy <= perfectUpper) && (leftArrowArray[i].arrowy >= perfectLower && !leftArrowArray[i].isPressed)) {
          leftArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(255, 255, 0);
          currentText = "PERFECT!!";
          totalScore += perfectScore;
          combo += 1;
          return;
        }
        else if ((leftArrowArray[i].arrowy <= greatUpper) && (leftArrowArray[i].arrowy >= greatLower && !leftArrowArray[i].isPressed)) {
          leftArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(0, 255, 0);
          currentText = "GREAT!";
          totalScore += greatScore;
          combo += 1;
          return;
        }
        else if ((leftArrowArray[i].arrowy <= goodUpper) && (leftArrowArray[i].arrowy >= goodLower && !leftArrowArray[i].isPressed)) {
          leftArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(0, 255, 255);
          currentText = "GOOD";
          totalScore += goodScore;
          combo = 0;
          return;
        }
        else if ((leftArrowArray[i].arrowy  <= poorUpper) && (leftArrowArray[i].arrowy >= poorLower && !leftArrowArray[i].isPressed)) {
          leftArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(255, 0, 0);
          currentText = "POOR";
          totalScore += poorScore;
          combo = 0;
          return;
        }
      }
    }

    if (keyPressed && keyCode == DOWN) {      
      for (int i = 0; i < downArrowArray.length; i++) {
        if ((downArrowArray[i].arrowy <= perfectUpper) && (downArrowArray[i].arrowy >= perfectLower && !downArrowArray[i].isPressed)) {
          downArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(255, 255, 0);
          currentText = "PERFECT!!";
          totalScore += perfectScore;
          combo += 1;
          return;
        }
        else if ((downArrowArray[i].arrowy <= greatUpper) && (downArrowArray[i].arrowy >= greatLower && !downArrowArray[i].isPressed)) {
          downArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(0, 255, 0);
          currentText = "GREAT!";
          totalScore += greatScore;
          combo += 1;
          return;
        }
        else if ((downArrowArray[i].arrowy <= goodUpper) && (downArrowArray[i].arrowy >= goodLower && !downArrowArray[i].isPressed)) {
          downArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(0, 255, 255);
          currentText = "GOOD";
          totalScore += goodScore;
          combo = 0;
          return;
        }
        else if ((downArrowArray[i].arrowy  <= poorUpper) && (downArrowArray[i].arrowy >= poorLower && !downArrowArray[i].isPressed)) {
          downArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(255, 0, 0);
          currentText = "POOR";
          totalScore += poorScore;
          combo = 0;
          return;
        }
      }
    }

    if (keyPressed && keyCode == UP) {  
      for (int i = 0; i < upArrowArray.length; i++) {
        if ((upArrowArray[i].arrowy <= perfectUpper) && (upArrowArray[i].arrowy >= perfectLower && !upArrowArray[i].isPressed)) {
          upArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(255, 255, 0);
          currentText = "PERFECT!!";
          totalScore += perfectScore;
          combo += 1;
          return;
        }
        else if ((upArrowArray[i].arrowy <= greatUpper) && (upArrowArray[i].arrowy >= greatLower && !upArrowArray[i].isPressed)) {
          upArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(0, 255, 0);
          currentText = "GREAT!";
          totalScore += greatScore;
          combo += 1;
          return;
        }
        else if ((upArrowArray[i].arrowy <= goodUpper) && (upArrowArray[i].arrowy >= goodLower && !upArrowArray[i].isPressed)) {
          upArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(0, 255, 255);
          currentText = "GOOD";
          totalScore += goodScore;
          combo = 0;
          return;
        }
        else if ((upArrowArray[i].arrowy  <= poorUpper) && (upArrowArray[i].arrowy >= poorLower && !upArrowArray[i].isPressed)) {
          upArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(255, 0, 0);
          currentText = "POOR";
          totalScore += poorScore;
          combo = 0;
          return;
        }
      }
    }

    if (keyPressed && keyCode == RIGHT) {  
      for (int i = 0; i < rightArrowArray.length; i++) {
        if ((rightArrowArray[i].arrowy <= perfectUpper) && (rightArrowArray[i].arrowy >= perfectLower && !rightArrowArray[i].isPressed)) {
          rightArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(255, 255, 0);
          currentText = "PERFECT!!";
          totalScore += perfectScore;
          combo += 1;
          return;
        }
        else if ((rightArrowArray[i].arrowy <= greatUpper) && (rightArrowArray[i].arrowy >= greatLower && !rightArrowArray[i].isPressed)) {
          rightArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(0, 255, 0);
          currentText = "GREAT!";
          totalScore += greatScore;
          combo += 1;
          return;
        }
        else if ((rightArrowArray[i].arrowy <= goodUpper) && (rightArrowArray[i].arrowy >= goodLower && !rightArrowArray[i].isPressed)) {
          rightArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(0, 255, 255);
          currentText = "GOOD";
          totalScore += goodScore;
          combo = 0;
          return;
        }
        else if ((rightArrowArray[i].arrowy  <= poorUpper) && (rightArrowArray[i].arrowy >= poorLower && !rightArrowArray[i].isPressed)) {
          rightArrowArray[i].press();
          shouldDraw = true;
          alpha = 255;
          currentColor = color(255, 0, 0);
          currentText = "POOR";
          totalScore += poorScore;
          combo = 0;
          return;
        }
      }
    }
    
    if (shouldDraw) {
      textAlign(CENTER);
      alpha = lerp(alpha, 0, 0.07);
      fill(currentColor, alpha);
      textFont(phraseFont, 30);
      text(currentText, width/2, height/2-100);
      if (alpha < 1) {
        shouldDraw = false;
      }
    }
  }
}

