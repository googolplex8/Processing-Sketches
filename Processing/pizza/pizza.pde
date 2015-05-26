import ddf.minim.*;       
AudioSample sound;
void setup() {
  Minim minim = new Minim(this);         
sound = minim.loadSample("chomp.wav");
  frameRate(10);
  size(1000, 1000);
  fill (245, 222, 179);
  ellipse (500, 500, 600, 600);
  fill (255, 69, 0);
  ellipse (500, 500, 500, 500);
  fill (255, 215, 0);
  ellipse (500, 500, 450, 450);
}
void draw() {
  PImage pizza = loadImage ("pizza.ppm.gif");
  PImage biohazard = loadImage ("biohazard.png");
  PImage grenade = loadImage ("grenade.png");
  int random = (int)random(3);
  println (random);
  if (mousePressed) {
    if (random == 1)
      image (pizza, mouseX, mouseY);
    pizza.resize (10, 10);
    sound.trigger();
  }
  if (mousePressed) {
    if (random == 0)
      image (biohazard, mouseX, mouseY);
    biohazard.resize (2, 2);
    sound.trigger();
  }
  if (mousePressed) {
    if (random == 2)
      image (grenade, mouseX, mouseY);
    grenade.resize (2, 2);
    sound.trigger();
  }
}

