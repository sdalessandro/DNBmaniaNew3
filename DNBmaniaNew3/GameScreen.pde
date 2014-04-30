class GameScreen {
  
  GameObjects myGameObjects;
  ActionPhrases myActionPhrases;

  PImage imgGZ;

  GameScreen() {
    myGameObjects = new GameObjects();
    myActionPhrases = new ActionPhrases();
    myActionPhrases.giveArrays(myGameObjects.leftArrowArray,
                               myGameObjects.downArrowArray,
                               myGameObjects.upArrowArray,
                               myGameObjects.rightArrowArray);
    imgGZ = loadImage("Gamezone.png");
  }

  void display() {
    //ScoreZone
    fill(0);
    rect(0, height, 300, -70);
    //ComboZone
    rect(width-300, height, 300, -70);
    
    //GameZone
    image(imgGZ, (width/2)-(width/8), 50);
    
    myGameObjects.display();
    myActionPhrases.display();
  }
}

