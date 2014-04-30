import ddf.minim.*;
Minim minim = new Minim(this);

class GameStart {  
  AudioPlayer menuSong;
  AudioPlayer song1;

  GameScreen myGameScreen;
  GameBackground myGameBackground;
  TitleScreen myTitleScreen;
  TitleScreenAni myTitleScreenAni;
  KeyFunctions myKeyFunctions;

  int mouseClicks = 0, introT, songT;
  float a = -90, b = -90, c = -90, d = 90, e = 90, fadeIn = 0, fadeInText = 0, fadeInBg = 0;
  boolean introInitialized = false, gbInitialized = false;
  PImage introLogo, introText, goFadeGZ;
  PFont readyGo;

  GameStart() {
    menuSong = minim.loadFile("Stride.mp3");
    song1 = minim.loadFile("Witchcraft.mp3");
    introLogo = loadImage("GameLogo.png");
    introText = loadImage("GameIntro.png");
    goFadeGZ = loadImage("Gamezone.png");
    readyGo = loadFont("Aero-90.vlw");
    myTitleScreen = new TitleScreen();
    myTitleScreenAni = new TitleScreenAni();
    myGameBackground = new GameBackground();
    myGameScreen = new GameScreen();
    myKeyFunctions = new KeyFunctions();
  }

  void playMenuSong() {
    if (mouseClicks == 0) {
      menuSong.loop();
    }
  }

  void display() {
    if ((mousePressed == true) && (mouseClicks == 0) && (introInitialized)) {
      mouseClicks = mouseClicks + 1;
    }
    if ((mouseClicks == 0) && (!introInitialized)) {
      if (a < 271) {
        background(0);
        tint(255, fadeIn);
        image(introLogo, 420, 200);
        fadeIn = (sin(radians(a))*127.5)+127.5;
        a += 1.4;
      }
      else if (b < 271) {
        background(0);
        tint(255, fadeIn);
        image(introText, width/2-320, height/2-80);
        fadeIn = (sin(radians(b))*127.5)+127.5;
        b += 1.4;
      }
      else {
        introInitialized = true;
      }
    }
    else if ((mouseClicks == 0) && (introInitialized)) {
      if (!gbInitialized) {
        myTitleScreen.display();
        gbInitialized = true;
      }
      myTitleScreenAni.display();
    }
    else if (mouseClicks == 1) {
      menuSong.pause();
      if (c < 0) {
        noStroke();
        fill(0, fadeIn);
        rect(0, 0, width, height);
        noFill();
        fadeIn = (sin(radians(c))*127.5)+127.5;
        c += 1;
      }
      else if (d < 271) {
        myGameBackground.fadeIn();
        fill(0, 255, 0, fadeInText);
        textAlign(CENTER);
        textFont(readyGo, 90);
        text("Ready...", width/2, height/2);
        fadeInText = (sin(radians(d))*127.5)+127.5;
        d += 5;
      }
      else {
        myGameScreen.display();
        myKeyFunctions.display();
        if (e < 271) {
          fill(0, 0, 255, fadeInText);
          textAlign(CENTER);
          textFont(readyGo, 90);
          text("Go!", width/2, height/2);
          noTint();
          fadeInText = (sin(radians(e))*127.5)+127.5;
          e += 2.5;
          introT = millis();
        }
        else {
          song1.play();
          songT = millis() - introT;
        }
      }
    }

    /*if (songT >= 20000) {
      myGameScreen.myGameObjects.leftArrowArray.setSpeed(0);
      myGameScreen.myGameObjects.downArrowArray.setSpeed(0);
      myGameScreen.myGameObjects.upArrowArray.setSpeed(0);
      myGameScreen.myGameObjects.rightArrowArray.setSpeed(0);
    }*/
    
    print("\nSongTime: "+songT);
  }
}

