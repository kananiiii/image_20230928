/* Program Notes
 - Finish Nightmode: medium and difficult
 */
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float roseX, roseY, roseWidth, roseHeight;
float roseX, roseY, roseWidth, roseHeight;
PImage picBackground, roseForeground, rosePortrait;
Boolean nightmode=false; //Note: clock will turn on automatically
Boolean brightnessControl=false; //Note: ARROWS
int brightnessNumber=128; //Range:1-255
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 800, 600 ); //Landscape
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  int hourNightmode = hour();//24-hour clock
  println(hourNightmode);
  if ( hourNightmode>17 ) { 
    nightmode=true;
  } else if (hourNightMode<06) {
    nightmode=true;
  } else {
    nightmode=false;
  }
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  roseX = appWidth*1/14;
  roseY = appHeight*1/8;
  roseWidth = appWidth*2.25/7;
  roseHeight = appHeight*1/4;
  roseX = roseX;
  roseY = appHeight*5/8;
  roseWidth = appWidth;
  roseHeight = appHeight;
   //Aspect Ratio Calculations
  //Determine Aspect Ratio
  //Compare dimension to get larger dimension
  //Calculate Smaller Dimension
  //Rewrite Variables based on rect() vars
  roseImageWidth = ;
  roseImageHeight = ;
  roseImageWidth = ;
  roseImageHeight =  ;
  roseImageWidth = ;
  roseImageHeight = ;
  //Concatenation of Pathways
  String up = "..";
  String open = "/";
  String imagesPath = up + open + up + open + up + open; 
  String landScapeImage = "Github/ImagesUsed/"
  String roseImage = "rose.png"
  String roseImage = "rose.png"
  picBackground = loadImage( imagesPath + landScapeImage + "Rose-DRAWING-–-STEP-10.jpg");
  roseForeground = loadImage();
  rosePortrait = loadImage();
 //
  //DIVs
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( roseX, roseY, roseWidth, roseHeight ); //rose image
  rect( roseX, roseY, roseWidth, roseHeight ); //rose image
  //
 //End setup
//
void draw() { 
  //background(255); //built in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  println(brightnessControl, nightmode, brightnessNumber);
  if ( brightnessControl==true )
  { //Gray Scale: 1/2 tint (i.e 128/256=1/2)
    if ( brightnessNumber<1 ) {
      brightnessNumber=1;
    } else if ( brightnessNumber>255 ) {
      brightnessNumber=255;
    } else {
      //Empty ELSE
    }
    tint (255, brightnessNumber);
  }
  //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
  } else {
    noTint(); //See Processing DOC
    //println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image(roseforeground,  roseX, roseY, roseWidth, roseHeight );//rose image, purpose: see circles in aspect ratio
  image(rosePortrait,  roseX, roseY, roseWidth, roseHeight ); //rose, in Portrait, geometry is landscape, thus centered
} //End draw
//
void keyPressed() {
  if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
  //Brightness: ARROWS activate brightnessControl, never off
  //NOTE: Nightmode does turn off
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //Brightness keybind
    brightnessControl = true;
    //builtin BUG 
    if ( key==CODED && keyCode==UP ) brightnessNumber++ ; //brightnessNumber+=1 //brightnessNumber = brightnessNumber+1
    if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ; //brightnessNumber-=1
    //CONTINUE HERE with brightness toggles
  }
  //
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
