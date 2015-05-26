void setup(){
 size(600, 600);
 background(255, 140, 0);
 }
 void draw(){
float x = random(600);
float y = random(600);

 
for(int i = 0; i<400; i++){
  float a = random (255);
float b = random (255);
float c = random (255);
 fill(a, b, c);
 ellipse(getWormX(i), getWormY(i), 10, 100);
}
makeMagical();
}

float frequency = 4;
float noiseInterval = 1000000; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}
