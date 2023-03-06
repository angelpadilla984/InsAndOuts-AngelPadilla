//Angel Padilla - Bob Ross

//So to begin, I would like to point out the fact that Bob Ross is one of my
//favorite painters and overall artists. I used to watch his tutorial videos
//and I always liked how comfortable the atmosphere felt with his videos.
//After seeing what I can be able to do with the image and text tool, I wanted
//to make a tribute in the most abstract kind of way. The feeling that I felt 
//when making this is like trying to make out a recognizable image that 
//slowly becomes unrecongizable.

//Now firstly, I applied four images and the same type of font as you can
//see here
PImage img;
PImage img2;
PImage img3;
PImage img4;
PFont font; 

//Each of the four images are different paintings made by Bob Ross
void setup() {
  size(1000, 600);
  img =  loadImage("bobross.jpg");
  img2 = loadImage("bobross2.jpg");
  img3 = loadImage("bobross3.jpg");
  img4 = loadImage("bobross4.jpg");
  //I found a font on 1001freefonts.com and it's 3D letters that I liked
  font = createFont("From Cartoon Blocks.ttf", 100);
  textFont(font);
}

void draw() {
  
//So I created a conditional statement as follows: if you press the number
//keys from 1, 2, and 3, you'll get a different painting as a result. Moreover,
//every painting has the same mouse functionality, and when you hover over the
//text that appears in the middle, the worlds become highlighted, and it 
//looks like a more bolded version of what it was before. In any direction
//you drag the paintings with, it's always a new trippy look to the painting
//that almost looks glitched in a way. As aforementioned, making this gave me 
//a feeling of trying to make out something that you know and the image itself
//gradually begins to lose itself.

  if (keyCode == '1')
  {
    fill(255, 0, 0);
    image(img2, 0, 0, mouseX * 2, mouseY * 2);
    textSize(45);
    text("There's No Such Thing As Mistakes", 225, 250);
    textSize(50);
    text("Just Happy Little Accidents", 250, 300);
  }
  else if (keyCode == '2')
  {
    fill(0, 255, 0);
    image(img3, 0, 0, mouseX * 2, mouseY * 2);
    textSize(45);
    text("There's No Such Thing As Mistakes", 225, 250);
    textSize(50);
    text("Just Happy Little Accidents", 250, 300);
  }
  else if (keyCode == '3')
  {
    fill(0, 0, 255);
    image(img4, 0, 0, mouseX * 2, mouseY * 2);
    textSize(45);
    text("There's No Such Thing As Mistakes", 225, 250);
    textSize(50);
    text("Just Happy Little Accidents", 250, 300);
  }
   else {
    fill(0);
    image(img, 0, 0, mouseX * 2, mouseY * 2);
    fill(255 , 255 , 255);
    textSize(45);
    text("There's No Such Thing As Mistakes", 225, 250);
    textSize(50);
    text("Just Happy Little Accidents", 250, 300);
   }
}

//The else statement I made is the first image that I initially had, so if 
//you press the space key for example, you'll get the else statement as an
//execution. One last thing I forgot to mention, not only do the images change
//when pressing a certain number key, but it's also important to know that
//the color of the text changes as well with colors that I mainly feel are 
//contrasted within the painting and you can visibly see. Just in case you
//can't, you can always hover over the text and it appears like some sort of
//hidden secret.
