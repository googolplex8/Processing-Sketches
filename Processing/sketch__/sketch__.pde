void setup(){
size(750, 700);
PImage face = loadImage("face.jpg");
face.resize(800, 800);
image (face, 0, 0); 
}

void draw(){
  rect(370, 190, 20, 20);
  fill(mouseX,mouseY,226);
  rect(405, 190, 20, 20);
  fill(mouseY,mouseX,226);
  ellipse(380, 195, 10, 10);
  fill(0, 0, 0);
  ellipse(410, 195, 10, 10);
  fill(0, 0, 0);
}
