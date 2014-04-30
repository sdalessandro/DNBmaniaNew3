class LeftArrow {
  
  boolean isPressed;
  float arrowy, arrowSpeed, introPause;
  PImage img;
  float alpha;

  LeftArrow() {
    isPressed = false;
    arrowy = 0;
    arrowSpeed = 3;
    introPause = 500;
    img = loadImage("LeftArrow.png");
  }

  void setY(float a) {
    arrowy = a + introPause;
  }
  
  void setSpeed(float s) {
    arrowSpeed = s;
  }
  
  void move() {
    arrowy -= arrowSpeed;
  }
  
  void press() {
    isPressed = true;
  }

  void display() {
    if (!isPressed) {
      move();
      if (arrowy <= 50) {
        if (alpha > 1) {
          alpha = lerp(alpha, 0, 0.08);
          stopShape();
        }
      }
      else if (arrowy <= 70) {
        alpha = 100;
        drawShape();
      }
      else {
        alpha = 255;
        drawShape();
      }
    }
    else if (isPressed) {
      if (alpha > 1) {
        alpha = lerp(alpha, 0, 0.08);
        drawShape();
      }
    }
  }

  void drawShape() {
    tint(255, alpha);
    image(img, 465, arrowy);
    noTint();
  }
  
  void stopShape() {
    tint(255, alpha);
    image(img, 465, 50);
    noTint();
  }
}

