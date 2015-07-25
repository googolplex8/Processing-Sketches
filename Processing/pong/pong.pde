import ddf.minim.*;
Minim minim;
AudioSample sound;  
PImage backgroundImage;
int xPos = 100;
int yPos = 100;
int speedX = 12;
int speedY = 12;
int screenX = 1700;
int screenY = 900;
int rectY = 875;
int rectX = 0; 
int rectLength = 150;
int lives= 5;
void setup() {
  size(screenX, screenY);
  minim = new Minim (this);
  sound = minim.loadSample("splish.wav");
  backgroundImage = loadImage("use.jpg");
}

void draw() {
  background(51, 17, 204);
 // image(backgroundImage, 0, 0);
  image(backgroundImage, 0, 0, screenX, screenY);
  xPos+=speedX;
  yPos+=speedY;
  ellipse(xPos, yPos, 20, 20);
  fill(221, 102, 0);
  stroke(0, 0, 0);
  if (xPos>=screenX || xPos<=0) {
    speedX=-speedX;
  }
  if (yPos>=screenY ) {
    xPos = 850;
    yPos = 200;
    delay(1000);
    lives-=1;
  }
  else if (yPos<=0) {
    speedY=-speedY;
  }

if(lives==0){
println("You loose!");
text("You Loose", 50, 50);
}
  rectX = mouseX; 
  rect(rectX, rectY, rectLength, 20);

  if (intersects(xPos, yPos, rectX, rectY+120, rectLength) ==true) {
    //speedX=-speedX;
    speedY=-speedY;
    sound.trigger();
  }
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength) {

    return true;
  }
  else 
    return false;
}

