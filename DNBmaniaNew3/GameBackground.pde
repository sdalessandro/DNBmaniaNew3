class GameBackground {

  int x;
  float fadeBg;
  boolean bgInitialized;
  PImage imgGZ, gameBG, fadeBG;

  GameBackground() {
    bgInitialized = false;
    gameBG = loadImage("GameBG.jpg");
    imgGZ = loadImage("Gamezone.png");
    fadeBG = loadImage("FadeBG.png");
    x = 0;
    fadeBg = 255;
  }

  void fadeIn() {
    //Game Background
    tint(255, 80);
    image(gameBG, 0, 0);
    noTint();
    
    //Game Zones
    fill(0);
    rect(0, height, 300, -70);
    rect(width-300, height, 300, -70);
    image(imgGZ, (width/2)-(width/8), 50);
    noFill();

    //Green Lines
    while (x < width) {
      fill(120, 255, 0, 15);
      noStroke();
      triangle(width/2, 0, 600+x, height, 630+x, height);
      triangle(width/2, 0, 400-x, height, 370-x, height);
      x += 80;
      noFill();
    }

    //Background Outline
    beginShape();
    stroke(255, 160);
    strokeWeight(10);
    strokeCap(ROUND);
    strokeJoin(ROUND);
    vertex(5, 0);
    vertex(5, height-75);
    vertex(305, height-75);
    vertex(305, height-5);
    vertex(width/2-155, height-5);
    vertex(width/2-155, 45);
    vertex(width/2+154, 45);
    vertex(width/2+154, height-5);
    vertex(width-305, height-5);
    vertex(width-305, height-75);
    vertex(width-5, height-75);
    vertex(width-5, -5);
    endShape();
    noStroke();
    
    if (fadeBg > 0) {
      tint(255, fadeBg);
      image(fadeBG, 0, 0);
      noTint();
      fadeBg -= 4.7222;
    }
    x = 0;
  }
}

