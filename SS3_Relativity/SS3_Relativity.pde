//Angel Padilla - Relativity

//There's this painting by M.C. Escher titled Relativity and in the painting,
//it's this trippy painting of different staircases. Some are rightside up,
//while the others are flipped horizontally. I'm a huge fan of trippy art
//like Salvador Dali's for example, and I really enjoy Escher's work here
//and I wanted to create something that reminds me of that. 

void setup() {
size(900, 720); //I made the canvas this size
}

void draw() {
  
  if (keyCode == 'W') 

//Pressing W will allow the user to see a change in the background as well
//as the staircase being flipped, I changed the colors of the repeating 
//rectangles that make for a staircase as well as the strokeweight and 
//color of the stroke. I made float variables with numerical values which 
//helped make this a reality
    {
    background(220, 208, 255); //lavender background
    for (float i = 0.9; i < width; i *= 1.1) {
      strokeWeight(7); //thicker lines
      stroke(0, 0, 255); //blue stroke color
      fill(128, 0, 32); //burgundy
      rect(i*6, i, i, i*3); //this causes the staircase to be flipped
     
//I also tried my best to create a rollover effect and when you press the 
//W key, the colors in both fill and stroke get inverted as well so that it 
//matches with the staircase. It's mainly a simple effect altogheter. I'm
//looking forward towards using something as effective as this in the near
//future. Hovering something with your mouse and having different shapes
//appear is honestly a really cool effect that I want to expand more upon.

      if (mouseX > 0 && mouseY > 600) {
      rect(0, 600, 100, 100);
    } else if (mouseX > 0 && mouseY < 500) {
      rect(0, 500, 100, 100);
    } else if (mouseX > 100 && mouseY > 500) {
      rect(100, 500, 100, 100);
    } else if (mouseX < 100 && mouseY < 600) {
      rect(100, 600, 100, 100);
      
    
    }
      
    }
      
//What a user sees initially before pressing W is the standard burgundy 
//background where it's just a regular staircase that's rightside up.
//Again, just like the other staircase you get by pressing W, this one also
//has different strokeweight, stroke color, background color, as well as
//different color in the fill. What the user should notice is that not only
//is the position of the staircase changed, but the fill and background colors 
//is inverted as well.

    } else {
    background(128, 0, 32); //burgundy background
    for (float j = 0.9; j < width; j *= 1.1) {
      strokeWeight(3); //thinner lines
      stroke(253, 146, 87); //cantaloupe color
      fill(220, 208, 255); //lavender color
      rect(j, j, j, j*0.5);
      
      if (mouseX > 0 && mouseY > 600) {
      rect(0, 600, 100, 100);
    } else if (mouseX > 0 && mouseY < 500) {
      rect(0, 500, 100, 100);
    } else if (mouseX > 100 && mouseY > 500) {
      rect(100, 500, 100, 100);
    } else if (mouseX < 100 && mouseY < 600) {
      rect(100, 600, 100, 100);
      
    }
      
      
    
    
    
   
  }
}
}
    
 
