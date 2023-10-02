//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
boolean nightmode=false; //Note; clock can turn on automatalically 
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 500, 100 ); //Landscape
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("..Github/ImageUsed/Untitled-design-6-e1654561796943");
 //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
} //End setup
//
void draw() {
  //background(255); //builti in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  //if ( [BRIGHTNESS, see keypressed] ) tint (255, 128); //Gray Scale:1/2 tint (i.e 128/256=1/2) 
  if ( nightmode==true ) tint ( 255, 255, 255 ); //Gray Scale:1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
    println(nightmode);
  } eles {
    noTint(); //see processing DOC
    println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End draw
//
void keyPressed() {} //End keyPressed
//Brightness
//
if ( key=='n' || key=='N') {
   if (nightmode==true) {//Nightmode, basic control is boolean
   nightmoode = false; 
 } eles {
   nightmode = true
  }
}  
//
void mousePressed() {} //End mousePressed
//
// End MAIN Program
