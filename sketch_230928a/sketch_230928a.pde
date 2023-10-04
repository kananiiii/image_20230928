/* Program Notes 
- Finsh Nightmode: medium and difficult 
*/
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
Boolean nightmode=false; //Note: clock and turn on automatically
int brightnessNumber=255
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 800, 600 ); //Landscape
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("..Github/ImageUsed/https://iheartcraftythings.com/wp-content/uploads/2021/05/Rose-DRAWING-%E2%80%93-STEP-10.jpg");
  //
  //DIVs
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
} //End setup
//
void draw() {
  //background(255); //builti in BUG, 1 pixel
  //background(255); //built in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  //if ( brightnessControl==true ) tint (255, brightnessNumber); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
    println(nightmode);
  } else {
    noTint(); //See Processing DOC
    println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End draw
//
void keyPressed() {
  //Brightness
  //
  if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
  //Brightness: ARROWS  activate brightnessControl, never off
  //NOTE: Nightmode dose turn off
  if ( [speacl Key Bind] ) { // Brightness keybind
    brightnessControl=true
     // CONTINUE HERE WITH BRIGHTNESS TOGGLES 
  } 
  //
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
