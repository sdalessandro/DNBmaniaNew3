GameStart myGameStart;

void setup() {
  size(1200, 800);
  background(0);
 
  myGameStart = new GameStart();
  myGameStart.playMenuSong();
}

void draw() {
  myGameStart.display();
}

void keyPressed() {
  myGameStart.myKeyFunctions.arrowPressed();
  myGameStart.myTitleScreenAni.updateMenu();
}

void keyReleased() {
  myGameStart.myKeyFunctions.arrowReleased();
}
