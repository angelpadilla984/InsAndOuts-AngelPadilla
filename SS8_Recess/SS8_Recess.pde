///////////////////////////////////////////////////////
/*
DEMO: SENDING DATA FROM PROCESSING TO ARDUINO OVER SERIAL.
Hover over text to send data to Serial.
Pair with Arduino demo sketch to control LEDs.
Note: Be sure to specify correct port number below!
 */
///////////////////////////////////////////////////////



//Recess By Angel Padilla
//So I essentially modified the sketch to have a recess theme, and 
//red light, green light was a fun game from my childhood so I decided to 
//incorporate that here. I changed the text to say Red Light! Stop! and 
//Green Light! Go! as well as Rest Game. If you hover towards the red light 
//text, the red LED light will light up and if you hover over the green light
//text, the green LED light will light up.


import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

PImage img;

void setup() {
  size(500, 500); 
  img = loadImage("playground.jpg"); //I uploaded a playground image and resized it
  size(500, 500); 
  fill(0);
  textSize (22);
  textAlign (CENTER, CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[0]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  //text stuff
  image(img, 0, 0);
  tint(255, 127);  
  text ("Red Light! Stop!", width/4, height/3);
  text ("Green Light! Go!", width-width/4, height/3);
  text ("Reset Game", width/2, height-height/3); //Here is where I changed text
  

//mouse location controls communication to Serial 
  if (mouseY > width/2 && mouseY < height) {  
    myPort.write(0); //send a 0
    println ("0");
  } else if (mouseX < width/2 && mouseX > 0) { //if mouse is on left side of screen
    myPort.write(1);  //write '1' to Serial port
    println("1"); //also print '1' to console
  } else if (mouseX > width/2 && mouseX < width) {
    myPort.write(2);  //write '2' to Serial port
    println ("2"); //print to '2' to console
  } else {  //otherwise
    myPort.write(0); //send a 0 
    println ("0");
  } //I kept the functionality the same and I overall had a fun time doing this
}
