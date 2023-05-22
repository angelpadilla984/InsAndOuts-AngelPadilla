//Death Star by Angel Padilla
//So in this Processing sketch, I essentially wanted to create a black
//background with ellipses everywhere in order to replicate stars in space.
//Then from there, I wanted to make an ellipse big enough to resemble the
//Death Star from Star Wars and have that ellipse be an interactable shape
//that the user can mess around with.
import processing.serial.*;
Serial myPort; 
PImage img;
int val=0;
float pot = 0;
float newPot=0;
int button = 0;
void setup() {
  size(600, 600);
  img = loadImage("darth vader.jpg");
   printArray(Serial.list()); // this line prints the port list to the console
   String portName = Serial.list()[0]; //change the number in the [] for the port you need
   myPort = new Serial(this, portName, 9600);
}
void draw() {
  background(0, 0, 0);
  ellipse(newPot, 200, 200, 200); // This is the Death Star.
  println("val " + val); 
  println("button " + button);
  println("pot " + pot);
  //println helps me to see the values of both the potentiometer and the 
  //pushbutton on the console.
  
color a = color (255, 255, 255);
fill(a);
noStroke();

  ellipse(300, 564, 5, 5);
  ellipse(100, 33, 5, 5);
  ellipse(85, 453, 5, 5);
  ellipse(43, 121, 5, 5);
  ellipse(57, 43, 5, 5);
  ellipse(32, 67, 5, 5);
  ellipse(38, 86, 5, 5);
  ellipse(555, 324, 5, 5);
  ellipse(324, 24, 5, 5);
  ellipse(12, 46, 5, 5);
  ellipse(343, 321, 5, 5);
  ellipse(158, 25, 5, 5);
  ellipse(356, 23, 5, 5);
  ellipse(85, 543, 5, 5);
  ellipse(33, 427, 5, 5);
  ellipse(78, 324, 5, 5);
  ellipse(388, 532, 5, 5);
  ellipse(463, 245, 5, 5);
  ellipse(264, 538, 5, 5);
  ellipse(106, 46, 5, 5);
  ellipse(46, 36, 5, 5);
  ellipse(36, 26, 5, 5);
  ellipse(86, 16, 5, 5);
  ellipse(99, 79, 5, 5);
  ellipse(56, 80, 5, 5);
  ellipse(56, 46, 5, 5);
  ellipse(58, 206, 5, 5);
  ellipse(68, 106, 5, 5);
  ellipse(58, 173, 5, 5);
  ellipse(78, 152, 5, 5);
  ellipse(232, 78, 5, 5);
  ellipse(232, 16, 5, 5);
  ellipse(272, 18, 5, 5);
  ellipse(302, 20, 5, 5);
  ellipse(322, 38, 5, 5);
  ellipse(342, 58, 5, 5);
  ellipse(176, 48, 5, 5);
  ellipse(421, 555, 5, 5);
  ellipse(164, 241, 5, 5);
  ellipse(99, 333, 5, 5);
  ellipse(232, 521, 5, 5);
  ellipse(521, 196, 5, 5);
  ellipse(131, 87, 5, 5);
  ellipse(313, 26, 5, 5);
  ellipse(532, 99, 5, 5);
  ellipse(287, 172, 5, 5);
  ellipse(136, 456, 5, 5);
  ellipse(598, 432, 5, 5);
  ellipse(141, 331, 5, 5);
  ellipse(513, 186, 5, 5);
  ellipse(21, 381, 5, 5);
  ellipse(415, 525, 5, 5);
  ellipse(464, 280, 5, 5);
  ellipse(158, 252, 5, 5);
  ellipse(451, 588, 5, 5);
  ellipse(294, 566, 5, 5);
  ellipse(564, 50, 5, 5);
  ellipse(590, 60, 5, 5);
  ellipse(363, 70, 5, 5);
  ellipse(362, 80, 5, 5);
//I set up a lot of ellipses here to represent stars in a galaxy far, far away

if ( myPort.available() > 0) { // If data is available,
    val = myPort.read();
}
  // read it and store it in val
    color b = color(169, 169, 169);
    fill(b);
    if (val == 0 || val == 1) {
      button = val; //I set the value of the pushbutton from 0 to 1
    }
    if (button == 1){
      image(img, 0, 0);
    }
    if  (val >= 2 && val <= 255){
      pot = val; //I set the value of the potentiometer from 2 to 255
    }
     newPot = map(pot, 2, 255, 0, 600);
     //The map function helps the direction of the potentiometer correspond
     //with the direction that the Death Star is.
   
//I was able to set the values for both the potentiometer as well as the
//pushbutton. I then made sure to say that if the value of the pushbutton is 
//1, then the background will immediately generate an image. After the song 
//stops playing, the value resets back to 0 and then the user can be to 
//interact with the potentiometer once more. I overall had a really interesting
//time trying to get the Arduino sketch to communicate with the Processing 
//sketch. After many attempts, I was happy knowing that it was working, which 
//gave me full creative control on what I wanted to do and I'm honestly
//grateful that my enclosure as well as both the Arduino and Processing sketch
//have a consistent aesthetic.
}
