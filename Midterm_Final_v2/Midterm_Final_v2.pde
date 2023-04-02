//Mr. Krabs Treasure Hunt by Angel Padilla   

//Well firstly, I just want to say that this was probably my most difficult 
//challenge thus far. This is considering that I was struggling with trying
//to naviagate everything as well as implementing the random function, but 
//I wanted to branch off of the things I learned from the previous assignments
//as well as what I created aesthetically. I made my midterm project Spongebob
//themed like in my first short study and implemented some code that was from
//short studies 1, 3, 4, and 5 collectively. The whole goal of my project is 
//that you're helping Mr. Krabs, one of the characters from Spongebob, find 
//the hidden treasure. The map features some clues that aid you on your
//quest towards finding the treasure, along with some references from the show.


//There's a bit of a latency issue involved once starting the program but 
//it's fine nonetheless it still works.

//I was able to import sound by downloading it on Processing. I clicked on
//Sketch and went to Import Library and from there I installed the sound.
//From there I was able to add my downloaded file that I got from a YouTube
//video that was converted to an MP3 file. It's essentially a remix of a sample.


import processing.sound.*;

SoundFile file;

String gameState;
int followCursor = 35;
int[] a = new int[followCursor];
int[] b = new int[followCursor];




//I got some help from my peers in class regarding the idea of game states
//and I'm pretty intrigued as to how it can be implemented into Processing.
//lines 17, 18, and 19 are basically from my previous short study that had
//to do with arrays, so I essentially took it and decided to branch out from
//a more creative standpoint.


PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PFont font;

//I added five images to my project as well as a font! I got it off of a 
//website called 1001freefonts.com for anyone that is interested, they have a 
//wide arange of different fonts that are really abstract and creative!

void setup () {
  size(800, 800); // I made the canvas this size
  
//As you can see, it was pretty easy to have the sound itself be played and 
//looped all over again. It was a really fun process overall.

  file = new SoundFile(this, "SpongebobMusic.mp3");
  file.play();
  file.loop();
  
  img = loadImage("money.jpg"); //image link: https://thumbs.dreamstime.com/b/money-seamless-pattern-isolated-white-american-money-washington-american-cash-usd-background-money-seamless-pattern-isolated-199536762.jpg
  img2 = loadImage("mrkrabs.jpg"); //image link: https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.spongebobshop.com%2Fproducts%2Fspongebob-squarepants-mr-krabs-big-face-premium-tote-bag&psig=AOvVaw3KEc0TWwdxOJmHHhITI75M&ust=1680480434712000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCOjhitDzif4CFQAAAAAdAAAAABAE
  img3 = loadImage("flyingdutchman.jpg"); //image link: https://static.wikia.nocookie.net/spongebobgalaxy/images/b/ba/Flying_Dutchman.png/revision/latest?cb=20201014223058
  img4 = loadImage("rockbottom.jpg"); //image link: https://static.wikia.nocookie.net/spongebob/images/c/c3/13_-_Hit_Rock_Bottom.png/revision/latest?cb=20200416124328
  img5 = loadImage("painting.jpg"); //image link: https://i1.sndcdn.com/artworks-000119064424-cqmy1m-t500x500.jpg
  
  //I used an image resizer link to make all of these 800x800. 
  //This is the link: https://www.simpleimageresizer.com/upload
  
  
  fill(0);
  font = createFont("Montague.ttf", 50); //Font Link: https://www.1001freefonts.com/
  textFont(font); 
  gameState = "START";

//So as you can see here, I applied my images by googling them online 
//and saving them as well as the font. I also applied the first gameState
//that is called "START" into the setup becasue that is the first area
//that I wanted the user to encounter.
}



//void coinsStack is essentially synonymous to that of the domino user defined
//function in my 5th short study that had to do with arrays. I took inspiration
//from that, and implemented it in a way where the ellipses have 
//different colors.

void coinsStack () {
  for (int x = 0; x < followCursor; x++) {

    
  }
}

//I got help from a peer in my classroom regarding the concept of game 
//states as aforementioned and I genuinely liked how they worked towards
//the process of navigation. I made a lot of game states and had the end 
//result be tied with a user defined function. This served as an abundance 
//for someone like me who was struggling in creating a navigation process.

void draw () {
  
  
  if (gameState == "START"){
      startGame();  
  }  else if (gameState == "DUTCHMAN"){
      flyingDutchman();
  } else if (gameState == "ROCK"){
      rockBottom();
  } else if (gameState == "PATCHY"){
      patchy();
  } else if (gameState == "PENNIES"){
      startPennies();
  } else if (gameState == "NICKLES"){
      startNickels();
  } else if (gameState == "DIMES") {
      startDimes();
  } else if (gameState == "QUARTERS") {
      startQuarters();
  } else if (gameState == "DOLLAR") {
      startDollarCoins();
  
    
    
      
  }

   
  
//As you can see here, I used arrays and took inspiration from my 5th short 
//study code and it was a perfect way to implement this within my project.
//This is essentially when the user finds the treasure and as the mouse
//follows the user, all of the coins are laid out and it looks great visually.

  for (int x = followCursor-1; x > 0; x--) { 
    a[x] = a[x-1];
    b[x] = b[x-1];
    
    a[0] = mouseX;
    b[0] = mouseY;

  }
}
 
//I took the mousePressed function and used it to differentiate the different
//values of coins. I made pennies, nickles, dimes, quarters, and dollar coins
//and categorized them by different sizes and colors that correlate with their
//values.

 void mousePressed() {
      if (gameState == "PENNIES"){
       gameState = "NICKLES";
     } else if (gameState == "NICKLES"){
       gameState = "DIMES";
     } else if (gameState == "DIMES"){
       gameState = "QUARTERS";
     } else if (gameState == "QUARTERS"){
       gameState = "DOLLAR";
     }
}

//So this function allows the user to click anywhere once they reach this 
//gameState and just like that you get different coins that have a color and
//sie that correlates to their value.

void startGame(){
  background(img2);
          fill(0);
          text("Hello There Matey! It's Mr. Krabs", 0, 50);
          text("I found a", 0, 100);
          text("Treasure", 0, 150);
          text("Map. We need ", 0 , 200);
          text("To use three", 0, 250);
          text("Arrow Keys!", 0, 300);
          text("I say we go", 0 , 350);
          text("Left, Down,", 0, 400);
          text("And then", 0, 450);
          text("Right! Let's Go", 0, 500);
          
//So in the beginning as you can see, Mr. Krabs essentially introduces 
//himself and tells you that he found this treasure map with clues. He leads 
//you with a set of instructions that lead to a great adventure.

    if (key == CODED){
      if(keyCode == UP){

   gameState =  "PENNIES";
  
    
    }
    
   
   
   //In this gameState, the user gets a rude encounter by the Flying Dutchman
   //Mr. Krabs urges the player to press the space key in order to escape.
     
     
     
    if (key == CODED) {
      if (keyCode == LEFT){
      gameState = "DUTCHMAN";
    }else if (keyCode == DOWN) {
      gameState = "ROCK";
    } else if (keyCode == RIGHT) {
      gameState = "PATCHY";
    } else if (keyCode == UP) {
      gameState = "START";
    }
    }
    
   
//This is where the use of the game states come in handy considering that 
//I can use the arrow keys to land them in a certain spot.


    

      
  }
  
}  



//Scrolling down, you can see all the different images I used as well as the 
//text I made as well as how I positioned where the words go. I made these
//into user defined functions which were then implemented into game states
//just so that they can have their own page.

void flyingDutchman(){
  
//In this game state, the player encounters the Flying Dutchman and all you 
//have to do is press Space in order to escape.
  
  
        background(img3);
        fill(255, 255, 255);
        text("Oh no! It's The Flying Dutchman!", 0, 700);
        text("Quick, Escape! Press Space!", 0, 750);
        if (keyPressed) {
          if (key == ' '){
            gameState = "START";
        }
     
        }
}
 
void rockBottom(){
        background(img4);
        fill(255, 255, 255);
        text("YIKES! We Reached Rock Bottom", 0, 50);
        text("Hurry up and take the bus!", 0, 700);
        text("Press Space to Accelerate!", 0, 750);
        
              
    //In this gameState, the user drops all the way down to Rock Bottom!
    //Mr. Krabs once again asks the player to press the space key to escape.
         
      //I figured out how to get the instructions working and the controls
      //responsive for the player to understand.
        if (keyPressed) {
          if (key == ' '){
            gameState = "START";
          }
     
        }
}


void patchy(){
        background(img5);
        fill(255, 255, 255);
        text("ARGG! It's Me, Patchy The Pirate!", 0, 50);
        text("Let's Go Find The Treasure!", 0, 100);
        text("Press Up To reveal the gold", 0, 700);
        
    //In this gameState, the user encounters Patchy The Pirate, who gives
    //us a clue. It seems that Mr. Krabs' instructions were entirely wrong 
    //this whole time, because all we have to do is go up and the treasure is
    //ours.
 
        
    //Going more into navigation, pressing up will allow you to go to the 
    //winning game state.
        if (key == CODED){
          if(keyCode == UP){

         gameState =  "PENNIES";
  
        }
    }
        
}


//Scrolling further down, you can see that I implemented a LOT of different
//user defined functions into the game state where you and Mr. Krabs find the 
//treasure.
void startPennies() {
    
   background(img);
   for (int x = 0; x < followCursor; x++) {
    
    fill(0);
    text("1 Cent", 50, 70);
    fill(173, 111, 105); // This color is copper brown for pennies
    ellipse(a[x], b[x], x*1.25, x*1.25);
    
    
    
    
    //As you can see, I used arrays and coding that I saw from 
    //the 5th short study and I managed to create different sizes 
    //for the coins. Every different coin has these fill values as well
    //as the ellipses being different. Lastly, The text on the upper left 
    //corner correlates to the value of what the coins are and you can 
    //progressively see that the more and more you click anywhere onto this
    //game state.
  }
  
}
  
void startNickels() {
  
  for (int x = 0; x < followCursor; x++) {
    
    fill(0);
    text("5 Cents", 50, 120);
    fill(196, 202, 206);  // This color is silver 
    ellipse(a[x], b[x], x*1.65, x*1.65);
   

  }
  
}
  
void startDimes() {
  
   for (int x = 0; x < followCursor; x++) {
    
    fill(0);
    
    text("10 Cents", 50, 170);
    fill(196, 202, 206);  // I used the same color for dimes and quarters
    ellipse(a[x], b[x], x*0.75, x*0.75);

    
  }
  
}


void startQuarters() {
   for (int x = 0; x < followCursor; x++) {
     fill(0);
     text("25 Cents", 50, 220);
     fill(196, 202, 206); 
     ellipse(a[x], b[x], x*3, x*3);
  }
  
}
 
void startDollarCoins() {
   for (int x = 0; x < followCursor; x++) {
     fill(0);
     text("100 Cents", 50, 270);
     text("Press R To Restart Adventure", 50, 750);
     fill(238, 181, 1); // This color is yellow
     ellipse(a[x], b[x], x*3.5, x*3.5);
     
     
//With help from a peer, I was able to figure out how I can used the 
//keyPressed function in order for the restart button to work and I'm
//honestly really grateful for the results.
if (keyPressed) {
      if (key == 'r' || key == 'R') {
        gameState = "START";
      }
    }
  }
  
  coinsStack();
  //Utilizing the coins stack function at the end makes the coins go all 
  //over the place in this game state and I like it for that reason.
  
  random(100);  
  //In due time I want to take this as a learning experience in order to fully
  //understand the use of the random function. It's like I understand it, but
  //as far as how it can be implemented into this sketch, I was struggling in
  //that regard. I think the only logical way was to add it into the winning 
  //game state where the player can interact with different coins but I really
  //like how each game state looks aesthetically. Overall, I can definitely 
  //say that this project was a lot of fun for me and I look forward to 
  //strengthening certain areas that I need to work on in future projects. 
}


 
