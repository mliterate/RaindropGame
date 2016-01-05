PImage apple;   //declare images
PImage apple2;
PImage apple3;
int count = 100;   //declare and initialize the variable count 
PVector mouse;   //declare a P 
ArrayList<Raindrop> drop = new ArrayList<Raindrop>(); //declare a a new array list
Bucket b;    //create a new buckect b
int score = 0;    //declare and initialize the variable score

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);   //set the size
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  b = new Bucket(100);    //initialize the bucket 
apple = loadImage("apple.gif");    //load the images 
apple2 = loadImage("apple2.jpg");
apple3 = loadImage("apple.png");
imageMode(CENTER);    //set the image mode to center

}

void draw() {
 
  if(frameCount < 50){   //if the frame count is less than 50  display the welcme screen
   background(0);   //set background
  image(apple,width/2,height/2,width,height);  //display the image for the background
   textSize(50);    //set text size
   textAlign(CENTER);   //align text
   text("WELCOME TO APPLE PICKERS",525,400);   //create text 
   text("COLLECT 100 APPLES TO WIN",525,800);  //create text
  }
   
 if(frameCount > 50){   //when the frame count is greater than 50 display the game.
  image(apple2,width/2,height/2,width,height);  //display image
  
   mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY

  b.update();    //update the bucket
  b.display();   //display the bucket 
   image(apple3,mouseX,mouseY,100,100);  //display the image
drop.add(new Raindrop(random(width), random(-20,0)));  //add objects to the array list
  for (int i = drop.size()-1; i>=0; i--) {  //the size of the array list decreases until it reaches zero
   Raindrop r = drop.get(i);  //create the apple
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      drop.remove(i);                         //if it is, remove the raindrop
   score = score + 1;     //increase the score
  
}
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      drop.remove(i);                           //if it does, remove the raindrop
    }
  }

fill(0,255,255);   //set the fill
textSize(100);   //set the text size

text(score,600,400);    //display the text for the score

 }

if(score>100){   //if the score reaches 100 display the winner screen
  background(0);  //set backgroun
  image(apple,width/2,height/2,width,height);  //display image
   textSize(50);   //set text size
   textAlign(CENTER);   //set align to center
   text("YOU WIN",525,400);   //display test you win
}

}