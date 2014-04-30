class TitleScreenAni {

  int menuPosition;
  color menuSelected;
  boolean downPressed, upPressed;
  float c, f, speedC, speedF;
  PFont fontT, fontM;

  TitleScreenAni() {
    fontT = loadFont("PlanetKosmos-90.vlw");
    fontM = loadFont("TerminatorRealNFI-30.vlw");
    menuPosition = 1;
    menuSelected = color(0, 94, 255);
    downPressed = false;
    upPressed = false;
    speedC = 0.5;
    speedF = 1.5;
  }

  void display() {
    //DNB Ani
    textAlign(CENTER);
    colorMode(HSB);
    if (c >= 255)  c=0;
    else  c += speedC;
    fill(c, 255, 255);
    textFont(fontT, 90);
    text("DNB", 363, 200);
    colorMode(RGB);

    //Game Menu
    textFont(fontM, 30);
    fill(255);
    text("Start", width/2, height/2+120);
    text("Options", width/2, height/2+170);
    text("Credits", width/2, height/2+220);
    text("Exit", width/2, height/2+270);
    if (menuPosition == 1) {
      fill(menuSelected);
      text("Start", width/2, height/2+120);
    }
    else if (menuPosition == 2) {
      fill(menuSelected);
      text("Options", width/2, height/2+170);
    }
    else if (menuPosition == 3) {
      fill(menuSelected);
      text("Credits", width/2, height/2+220);
    }
    else if (menuPosition == 4) {
      fill(menuSelected);
      text("Exit", width/2, height/2+270);
    }
  }

  void updateMenu() {
    if (keyCode == DOWN) {
      menuPosition += 1;
    }
    if (keyCode == UP) {
      menuPosition -= 1;
    }
    menuPosition = constrain(menuPosition,1,4);
  }
}

