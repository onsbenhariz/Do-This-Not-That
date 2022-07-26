//Global Variables
float xCenter, yCenter;
float xRect1, yRect1, rectWidth1, rectHeight1;
float xRect2, yRect2, rectWidth2, rectHeight2;
float xRectButton, yRectButton, rectButtonWidth, rectButtonHeight;
float xEli, yEli, eliWidth,eliHeight;
color black=#000000, white=#FFFFE1;
Boolean rectON=false, ellipseON=false;
//
String buttonText1= "Click Me";
String buttonText2= "Or Me";
PFont buttonFont;
color purple = #2C08FF; //Note Night Mode Friendly, all of the blue is included
//
void setup() 
{
  //Display Geometry
  size (500, 500);
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if (width >displayWidth || height >displayHeight) { //CANVAS in Display Checker
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println ("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println ("CANVAS is Good to go on your Display.");
  } //End CANVAS in Display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  String orientation = (appWidth>=appHeight) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a Variable
  println(DO, orientation) ;
  if (orientation ==ls) {//Test for chosen display orientation
    println ("Good to Go");
  } else {
    appWidth *= 0; //assingment operator, works like appWidth=appWidth*)
    appHeight *= 0;
    println(instruct);
  }
  //
  //Population using appWidth &appHeight:
  int xCenter = appWidth/2;
  int  yCenter = appHeight/2;
  xRect1 = xCenter - appWidth*1/3;
  yRect1 = yCenter - appHeight*1/3 ;
  rectWidth1 = appWidth/4 ;
  rectHeight1 = appHeight/4;
  xRect2 = xCenter + appWidth*1/6;
  yRect2 = yRect1 ;
  rectWidth2 = rectWidth1 ;
  rectHeight2 = rectHeight1;
  xRectButton = xRect1 ;
  yRectButton = yRect1 + appHeight*1/3 ;
  rectButtonWidth = rectWidth1 ;
  rectButtonHeight = rectHeight1;
  xEli = xRect2 ;
  yEli = yRect2 + appHeight*1/3 ;
  eliWidth = appWidth*1/10 ;
  eliHeight = appHeight*1/15;
  //
  //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
}//End setup
//
void draw() 
{
  background(black);
  rect(xRect1, yRect1, rectWidth1, rectHeight1); //button rect
  rect(xRect2, yRect2, rectWidth2, rectHeight2); //button rect
  if ( rectON ==true)rect(xRectButton, yRectButton, rectButtonWidth, rectButtonHeight); // Button 1 displayed
  if (ellipseON ==true)ellipse(xEli, yEli, eliWidth,eliHeight); //Button 2 displayed
  //
  ////Text Draw, General Code for any text
  //Note: visualization rectangle is in main program
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 25); //Change the number until it fits, largest font size
  //
  //Specific Text per button
  text(buttonText1, xRect1, yRect1, rectWidth1, rectHeight1);
  text(buttonText2, xRect2, yRect2, rectWidth2, rectHeight2);
  fill(white); //Will change the fill() on all shapes the second time repeated in draw()
  //
  


}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  rectON=false;
  ellipseON=false;
  if (mouseX>=xRect1 && mouseX<=xRect1+rectWidth1 && mouseY>= yRect1 && mouseY<= yRect1+rectHeight1) rectON=true;
  if (mouseX>=xRect2 && mouseX<=xRect2+rectWidth2 && mouseY>= yRect2 && mouseY<= yRect2+rectHeight2) ellipseON=true;
}//End mousePressed
//End MAIN setup
