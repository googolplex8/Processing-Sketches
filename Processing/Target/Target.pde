void setup(){
  size(1000, 1000);

}
void draw() {
 float random = random(255);
  for (int i = 1000; i > 0; i-=10) {
  fill (mouseX, mouseY, random);
  ellipse (500, 500, i, i);
  }
}
