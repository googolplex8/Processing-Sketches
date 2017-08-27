int canvasWidth = 1000;
int canvasHeight = 500;

void setup(){
  size(canvasWidth, canvasHeight);
  createPyramid(50, 12, 14);
}

void draw(){
}

void createPyramid(int width, int height, int base){
  int startingPoint = 0;
  int bricks = base;
  if(base%2==0){
    startingPoint=(canvasWidth/2)-((base/2)*width)-(width/2);
    print(startingPoint);
  }
  else{
    startingPoint=(canvasWidth/2)-(((base-1)/2)*width)-(width+width/2);
    print(startingPoint);
  }
  for(int j = 1; j<=base; j++){
    for(int i = 1; i<=bricks; i++){
       rect(startingPoint+(width*i), canvasHeight-(j*height), width, height); 
    }
    bricks--;
    startingPoint+=(width/2);
  }
}
