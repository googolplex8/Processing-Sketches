import ddf.minim.*;
Minim minim;
AudioSample sound;  
PImage backgroundImage;
int xPos = 100;
int yPos = 100;
int speedX = 8;
int speedY = 8;
int screenX = 1700;
int screenY = 900;
int rectY = 875;
int rectLength = 150;
void setup() {
  size(screenX, screenY);
  minim = new Minim (this);
  sound = minim.loadSample("splish.wav");
  backgroundImage = loadImage("use.jpg");
}

void draw() {
  background(51, 17, 204);
  image(backgroundImage, 0, 0);
  image(backgroundImage, 0, 0, screenX, screenY);
  xPos+=speedX;
  yPos+=speedY;
  ellipse(xPos, yPos, 20, 20);
  fill(221, 102, 0);
  stroke(0, 0, 0);
  if (xPos>=800 || xPos<=0) {
    speedX=-speedX;
  }
  if (yPos>=800 || yPos<=0) {
    speedY=-speedY;
  }
  if (yPos>=800) {
    println("hi");
    sound.trigger();
  }
  rect(mouseX, rectY, rectLength, 20);
  if (intersects()xPos, yPos, rectX, rectY, rectLength ==true) {
    speedX=-speedX;
    speedY=speedY;
  }
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}

