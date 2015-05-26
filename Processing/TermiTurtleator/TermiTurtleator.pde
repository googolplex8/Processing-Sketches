import ddf.minim.*;        
AudioSample sound;
int ellipse1x = 487;
int ellipse1y = 345;
int ellipse2x = -487;
int ellipse2y = -345;
int acceleration = 1;
void setup() {
  size(1264, 792);
  PImage turtlePic = loadImage("turtle.jpg");
  background(turtlePic);
  Minim minim = new Minim(this);         
  sound = minim.loadSample("laser.wav");
}
void draw() {

  translate(ellipse1x, ellipse1y);
  rotate(-PI/3.0);
  noStroke();
  fill (random(255), random(255), random(255));
  ellipse(0, 0, 40, 60);
  translate (ellipse2x, ellipse2y);
  rotate(PI/3.0);
  fill (random(255), random(255), random(255));
  ellipse(785, -275, 40, 60);
  if (ellipse1x > 1000 && ellipse1y > 400) {
    ellipse1x = 487;
    ellipse1y = 345;
    ellipse2x = -487;
    ellipse2y = -345;
    acceleration = 1;
    PImage turtlePic = loadImage("turtle.jpg");
    background(turtlePic);
  }
}

void keyPressed() {
  sound.trigger();
  ellipse2y+=2*acceleration;
  ellipse1y+=2*acceleration;
  ellipse2x+=2*acceleration;
  ellipse1x+=2*acceleration;
  acceleration += 1;
}

