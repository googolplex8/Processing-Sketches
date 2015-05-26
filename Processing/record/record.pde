import ddf.minim.*;
PImage recordPic; 
int imageAngle = 0;
Minim minim; 
AudioPlayer song; 

void setup() {
  recordPic = loadImage("record.jpg");
  size(recordPic.height, recordPic.width);
  minim = new Minim(this);
  song = minim.loadFile("song.mp3", 512);
}

void draw() {
  if (mousePressed) {
    imageAngle+=2;
    rotateImage(recordPic, imageAngle);
    song.play();
    }
   else{
     rotateImage(recordPic,imageAngle);
     song.pause();
   }
      image(recordPic, 0, 0);
}
void rotateImage(PImage recordPic, int amountToRotate) {
  translate(width/2, height/2);
  rotate(amountToRotate*TWO_PI/360);
  translate (-recordPic.width/2, -recordPic.height/2);
}

//We are going to make a virtual record player that spins and plays your song when you click on it.
//
//Start with a new sketch that contains setup() and draw() methods. Ask your teacher if you don't know how to do this.
//
//1. Find an image of a record.
//i) Save the image.
//  ii) Drop the image file onto your sketch.
//  iii) Load it with code like this...
//    PImage pictureOfRecord;        //as member variable
//    pictureOfRecord= loadImage("record.jpg");   //in setup method  
//    image(pictureOfRecord, xPosition, yPosition);//in draw method
//
//2. Set the size of your canvas to match the size of your image.
//  size(width, height)
//  image.width
//image.height
//
//3. Use this method to rotate your image.      
//  void rotateImage(PImage image, int amountToRotate) {
//      translate(width/2, height/2);
//      rotate(amountToRotate*TWO_PI/360);                              
//      translate(-image.width/2, -image.height/2);
//}
//
//5. Adjust the speed of the record player. Make the record spin.
//  i) Make a variable to keep track of the image angle.
//ii) Increase this variable in the draw method.
//iii) Use this variable when you call the rotateImage() method.
//
//
//6. Only spin the record when the user clicks the mouse button.
//  mousePressed
//
//7. Add a song.
////drop the song file onto your sketch
//
//  import ddf.minim.*;     //at the very top of your sketch
//  Minim minim;        //as a member variable
//  AudioPlayer song;      //as a member variable
//  minim = new Minim(this);    //in the setup method
//  song = minim.loadFile("awesomeTrack.mp3", 512);//in the setup method
//song.play();
//  
//
//8. Only play the song when the mouse is pressed.
//  mousePressed
//  song.play()
//  song.pause()

