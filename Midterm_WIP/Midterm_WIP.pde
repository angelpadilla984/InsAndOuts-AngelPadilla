//Midterm Project by Angel Padilla

int followCursor = 35;
int[] a = new int[followCursor];
int[] b = new int[followCursor];

PImage img;
PFont font;

void setup () {
  size(800, 800); // I made the canvas this size
  img = loadImage("");
  font = createFont("", 100);
  textFont(font);
}

void coins () {
  
  for (int x = 0; x < followCursor; x++) {
    ellipse(a[x], b[x], x*4, x*4);
  }
  
}

void coinsStack () {
  for (int x = 0; x < followCursor; x++) {
    ellipse(a[x], b[x], x*2, x*2);
    
  }
}
void draw () {
  
  for (int x = followCursor-1; x > 0; x--) { 
    a[x] = a[x-1];
    b[x] = b[x-1];
  }
  
  a[0] = mouseX;
  b[0] = mouseY;
  
  coins();
  coinsStack();
  random(100);
  fill(173, 111, 105); // This color is copper brown for pennies
  
  if (keyCode == 'N')
  {
    fill(196, 202, 206);  // This color is silver (N for Nickel)
  }
  
  else if (keyCode == 'D')
  {
    fill(238, 181, 1); // This color is yellow (D for Dollar)
  }
 
  
}
