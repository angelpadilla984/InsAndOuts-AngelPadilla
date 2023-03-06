//Rave Lights By Angel Padilla

//I learned about what a mouseDragged function can do, so I wanted to implement
//the function here. I also implemented floats as well as if, else, and else if
//statements. Within those statements are key presses. By pressing a certain
//key, you'll get a different background and by holding the LMB and moving it
//around, you can see a sporadic amount of circles and squares. The lines
//ended up appearing at the middle and it's like it's tracking these multiple
//shapes, so seeing that reminded me of rave lights that you would see at a
//concert which is why this project is called Rave Lights. I'm ultimately
//really proud of how this looks visually and it's something I enjoyed doing.

float a;
float b;
float c;
float d;

int x = 75;
int y = 340;
int z = 300;

void setup()
{
  size(650, 650);
  smooth();
}
void mouseDragged()
{
  a = random(255);
  b = random(255);
  c = random(255);
  d = random(255);
  
  
  fill(a, b, c, d);
  ellipse(random(mouseX), random(mouseY), x, x);
  rect(random(mouseX), random(mouseY), x, x);
  stroke(a, b, c, d);
  line(random(mouseX), random(mouseY), y, z);


}
void draw()
{

  


  if (keyCode == 'W')
  {
    background(128, 0, 32);
  }
   else if (keyCode == 'A')
  {
    background(107, 142, 35);

  }
   else if (keyCode == 'S')
  {
    
   background(2, 7, 93);
    
  }
  
   else if (keyCode == 'D')
  
  {
    
   background(214, 107, 41);
    
  }
   else
  {
    background(0, 0, 0);
  }



}
