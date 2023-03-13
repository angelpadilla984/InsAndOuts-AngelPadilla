//Angel Padilla - Colorful Cursor

//As far as my first introduction is going when using arrays in Processing,
//it was honestly a challenge for me so I would definitely say that this
//assignment was the toughtest one so far and that's ok. Experimentation is 
//always a good thing to do, and what I decided to make was an interactive
//sketch while using your mouse. The design itself aligns with your mouse and
//it almost resembles the look of a rainbow slinky. I definitely want to try and 
//understand more of the functionalities surrounding Arrays and User Defined 
//Functions in the near future, but as far as my project goes, I'm definitely going 
//to branch out more on Short Studies 2, 3, and 4 for the midterm altogether.

//I set the initial value to 35 for mouse. Changing the mouse's numerical value 
//ultimately changes the size of the ellipses that follow the cursor. So the higher
//the number, the bigger the circle.

int mouse = 35;
int[] a = new int[mouse];
int[] b = new int[mouse];

void setup() {
  size(500, 500);
}

void rbSlinky() {

// This is one of my user defined functions where I put an array onto it
// I made a new value called x that equals 0, made the mouse value better than x.
// I then applied an increment which means x++ = x + 1
// x*2 on both positions means that the ellipses constantly grow and expand.
// I even experimented with x/2 initially and it made the circles shrink.

// From there, arrays a and b have the x value within the empty parentheses

  for (int x = 0; x < mouse; x++) {
    ellipse(a[x], b[x], x*2, x*2);
  }
 }
 
 void domino() {
   
 //This is another user defined function where I essentially changed the 
 //x and y positions to have just the x value. This is opposed to what we see in 
 //the rbSlinky(rb as in rainbow) user defined function where the x value is 
 //multiplied by 2. I'd like to call this function domino considering that when 
 //one experiments with the sketch, you can see a trail of circles follow you and 
 //the entire thing just stacks up. It reminds me of when you let one domino drop
 //and then you watch all the other dominoes drop as a result only to see a 
 //pair of fallen dominos on the ground.
 
    for (int x = 0; x < mouse; x++) {
    ellipse(a[x], b[x], x, x);
  }
}

void draw() {
  
 
  for (int x = mouse-1; x > 0; x--) { 
    a[x] = a[x-1];
    b[x] = b[x-1];
  //Applying this type of code allows the values to be shifted to the right
  //I made a value and made it equal to the mouse value minus 1
  //It's also better than 0 and I applied a decrement after which means x-- = x - 1 
  //I then applied the decrement and made it equal to the a array and b array
  
  }
  
  a[0] = mouseX;
  b[0] = mouseY;
  //I made a and b become equal to mouseX and mouseY so that the position of 
  //where the cursor at is aligned by the arrays
  
  domino();  
  //After creating my own user-defined function, I simply added it under void draw.
  
  rbSlinky();
  //I added this user-defined function also just so that it can be applied
  
  
  //Furthermore, I added a conditional statement which allows the user to change
  //to any color they want, and it's in the order of a rainbow. Red, orange, yellow,
  //green, blue, and purple are the variety of colors that the user has. This is 
  //ultimately a useful tool because just in case you get lose with just one color,
  //you can have multiple as a result so that it's easier to follow your cursor.
  
  if (keyCode == '1')
  {
    fill(255, 94, 5); // This color is orange
  }
  
  else if (keyCode == '2')
  {
    fill(250, 253, 15); // This color is yellow
  }
  
  else if (keyCode == '3')
  {
    fill(0, 255, 0); // This color is green
  }
  
  else if (keyCode == '4')
  { 
    fill(0, 0, 255); // This color is blue
  }
  
  else if (keyCode == '5')
  {
    fill(75, 0, 130); // And this color is purple
  }
  
  else
  {
    fill(255, 0, 0);
  }
  
 
    
  
  
 }
