//Red&Green by Kevin Romo //Modified by Thomas and Angel
//the color of the shapes change between green and red when the mouse goes acrross it
import processing.serial.*;
Serial myPort;
int val=0;
void setup(){
  size(700,700);
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}
void draw(){
   if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  background(255,220,200);
  for(int i=1; i<=700; i+=2){
  rect(0, i, 200,i);
  }
  line (450,0,450,700);
  line(200,350,700,350);
  //ellipse(325, 200, 250, 200);
  //triangle(700, 600, 450, 600, 575, 400);
  if (val > 0 && val <  25){
    fill(255,100,100);
    rect(480,100,200, 200);
  } else if ( val > 26 && val < 50){
    fill(100, 210, 12);
    ellipse(325, 200, 250, 200);
  } else if ( val > 51 && val < 75){
    fill(137,62,48);
    triangle(700, 600, 450, 600, 575, 400);
  } else if ( val > 76 && val < 100){
    ellipseMode(RADIUS);
    fill(76, 38, 254);
    ellipse(325, 500, 100, 100);
    ellipseMode(CENTER);
    fill(220,41,246);
    ellipse(325, 500, 150, 100);
  }
}
