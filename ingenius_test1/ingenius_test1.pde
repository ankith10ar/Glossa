import java.awt.*;

import javax.swing.SwingUtilities;

import java.awt.MouseInfo;

import java.awt.event.InputEvent;

import java.awt.Point;
import java.awt.Robot;
Robot robby;
import java.awt.AWTException;

int up=0,down=0,left=0,right=0,push=0;
int xx =0, yy =0, nxx =0, nyy =0;
String f1="j";//a
String f2="k";//b
String f3="l";//c
String l1="m";//d
String l2="n";//e
String l3="o";//f
String d1="p";//g
String d2="q";//h
String d3="r";//j
String e="t";//s
String e1="u";//v
String e2="w";//x
String e3="y";//z
String c="@";//#
String n="$";//%
String b="A";//B
PImage img;
PImage img2;
PImage img3;


import processing.serial.*;
Serial port;
Serial myport;

void setup() { 
  size(900, 650); 
  frameRate(10); 
  //// Open the port that the board is connected to and use the same speed (9600 bps)
  //port = new Serial(this,"COM6", 9600); 
  img = loadImage("emcall.png");
  img2=loadImage("buzzer.png");
  img3=loadImage("buzzer1.jpg");
  try
  {
    robby = new Robot();
  }
  catch (AWTException e)
  {
    println("Robot class not supported by your system!");
    exit();
  }

try{ port = new Serial(this,"COM38",9600); //com= arduino com (Arduino ide -> Tool -> Port:"comX"

port.bufferUntil('\n');

} catch(Exception ex){

text("Nincs soros \n port komunikáció!",10,14); //(EN) " There is no serial port communication!"

} 
try{ myport = new Serial(this,"COM40",9600); //com= arduino com (Arduino ide -> Tool -> Port:"comX"

port.bufferUntil('\n');

} catch(Exception ex){



} 
} 
 
void draw() { 
  System.out.println(mouseX+","+mouseY);
  background(255);
  line(5,5,895,5);
  line(5,5,5,620);
  line(5,620,895,620);
  line(895,620,895,5);
  line(5,310,895,310);
  line(300,310,300,5);
  line(600,310,600,5);
  textSize(30);
  fill(0, 102, 153);
text("Room1", 80, 350);
fill(0, 102, 153);
text("Room2", 380, 350);
fill(0, 102, 153);
text("Room3", 680, 350);


   //Buzzer
    if (b=="A"){
      pushMatrix();  
      image(img2, 390, 540, 75, 75);
      popMatrix();
  }
      
  else{
        pushMatrix();
        image(img3, 390,540, 75, 75); 
        delay(100);
        //b="A";
        popMatrix();
    }
    if ((mouseOverBuzzer() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (b=="B")
    {
      b="A";
    }
    else
    {
    b="B";
    }
    delay(20);
    myport.write(b);               // send an H to indicate mouse is over square 
  }

   

   //News

    if (n=="$"){
      pushMatrix();  
      textSize(30);
      fill(0, 102, 153);
      text("NEWS", 385, 450);
      popMatrix();
  }
      
  else{
        pushMatrix();
        link("https://news.google.com/news/?ned=in&hl=en-IN"); 
        n="$";
        popMatrix();
    }
    if ((mouseOverNews() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (n=="%")
    {
      n="$";
    }
    else
    {
    n="%";
    }
    delay(20);
    //myport.write(n);               // send an H to indicate mouse is over square 
  }

    //Contacts
     if (c=="@"){
      pushMatrix();  
      textSize(30);
      fill(0, 102, 153);
      text("Contacts:", 30, 420);
      popMatrix();
  }
      
  else{
        pushMatrix();
        textSize(30);
        fill(0, 102, 153);
        text("Contacts:", 30, 420);
        textSize(20);
        fill(0, 102, 153);
        text("    *Hamsa",30, 450);       
        fill(0, 102, 153);
        text("    *Ankith", 30, 480);   
        fill(0, 102, 153);
        text("    *Vamsi", 30, 510);
        popMatrix();
    }
    if ((mouseOverCont() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (c=="#")
    {
      c="@";
    }
    else
    {
    c="#";
    }
    delay(20);
    //port.write(c);               // send an H to indicate mouse is over square 
  }


    
    //Emergency call

      if (e=="t"){
      pushMatrix();  
      image(img, 665, 400, 75, 75);
      popMatrix();
  }
      
  else{
        pushMatrix();
        image(img, 665, 400, 75, 75);
        fill(255,255,255);
        rectMode(CORNERS);
        rect(620, 550, 667, 505); 
        textSize(20);
        fill(0, 102, 153);
        text("100",625, 535);
        fill(255,255,255);
        rect(680, 550, 730, 505); 
        fill(0, 102, 153);
        text("101", 686, 535);
        fill(255,255,255);
        rect(747, 550, 795, 505); 
        fill(0, 102, 153);
        text("108", 750, 535);
        popMatrix();
    }
  if ((mouseOverEmCall() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (e=="s")
    {
      e="t";
    }
    else
    {
    e="s";
    }
    delay(20);
    //port.write(e);               // send an H to indicate mouse is over square 
  }
  
  //100
  
        if (e1=="v"){
      pushMatrix(); 
        fill(255,255,255);
        rectMode(CORNERS);
        rect(620, 550, 800, 505);
        textSize(30);
        fill(0, 102, 153);
        text("Dialing 100", 627, 540);
      popMatrix();
  }
      
  else{}

  

  if ((mouseOverEmCall1() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (e1=="v")
    {
      e1="u";
    }
    else
    {
    e1="v";
    }
    delay(20);
    myport.write(e1);               // send an H to indicate mouse is over square 
  }

   //101
   
        if (e2=="x"){
      pushMatrix(); 
        fill(255,255,255);
        rectMode(CORNERS);
        rect(620, 550, 800, 505);
        textSize(30);
        fill(0, 102, 153);
        text("Dialing 101", 627, 540);
      popMatrix();
  }
      
  else{}


  if ((mouseOverEmCall2() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (e2=="x")
    {
      e2="w";
    }
    else
    {
    e2="x";
    }
    delay(20);
    myport.write(e2);               // send an H to indicate mouse is over square 
  }

  
   //108
        if (e3=="z"){
      pushMatrix(); 
        fill(255,255,255);
        rectMode(CORNERS);
        rect(620, 550, 800, 505);
        textSize(30);
        fill(0, 102, 153);
        text("Dialing 108", 627, 540);
      popMatrix();
  }
      
  else{}


  if ((mouseOverEmCall3() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (e3=="y")
    {
      e3="z";
    }
    else
    {
    e3="y";
    }
    delay(20);
    myport.write(e3);               // send an H to indicate mouse is over square 
  }


    //Door1
      if (d1=="p"){
      pushMatrix();  
      fill(255,150,100);
      rectMode(CORNERS);
      rect(60, 310, 120, 220); 
      popMatrix();
  }
      
  else{
        pushMatrix();
        fill(255,150,100);
        beginShape();
        vertex(60,310);
        vertex(60,220);
        vertex(110,230);
        vertex(110,300);
        vertex(60,310);
        endShape();
        popMatrix();
    }
  if ((mouseOverDoor1() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (d1=="p")
    {
      d1="g";
    }
    else
    {
    d1="p";
    }
    delay(20);
    //port.write(d1);               // send an H to indicate mouse is over square 
  }

    //Door2
      if (d2=="q"){
      pushMatrix();  
      fill(255,150,100);
      rectMode(CORNERS);
      rect(360, 310, 420, 220); 
      popMatrix();
  }
      
  else{
        pushMatrix();
        fill(255,150,100);
        beginShape();
        vertex(360,310);
        vertex(360,220);
        vertex(410,230);
        vertex(410,300);
        vertex(360,310);
        endShape();
        popMatrix();
    }
  if ((mouseOverDoor2() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (d2=="q")
    {
      d2="h";
    }
    else
    {
    d2="q";
    }
    delay(20);
    //port.write(d2);               // send an H to indicate mouse is over square 
  }

    //Door3
      if (d3=="r"){
      pushMatrix();  
      fill(255,150,100);
      rectMode(CORNERS);
      rect(660, 310, 720, 220); 
      popMatrix();
  }
      
  else{
        pushMatrix();
        fill(255,150,100);
        beginShape();
        vertex(660,310);
        vertex(660,220);
        vertex(710,230);
        vertex(710,300);
        vertex(660,310);
        endShape();
        popMatrix();
    }
  if ((mouseOverDoor3() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (d3=="r")
    {
      d3="i";
    }
    else
    {
    d3="r";
    }
    delay(20);
    //port.write(d3);               // send an H to indicate mouse is over square 
  }
  
    
    //Light1
      if (l1=="m"){
      pushMatrix();
      fill(255,255,255);
      ellipseMode(CENTER);
      ellipse(60,50,20,20);
      popMatrix();
  }
      
  else{
        pushMatrix();
        fill(255,255,0);
        ellipseMode(CENTER);
        ellipse(60,50,20,20);
        popMatrix();
    }
  if ((mouseOverLight1() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (l1=="m")
    {
      l1="d";
    }
    else
    {
    l1="m";
    }
    delay(20);
    myport.write(l1);               // send an H to indicate mouse is over square 
  }

  
    
    //Light2
      if (l2=="n"){
      pushMatrix();
      fill(255,255,255);
      ellipseMode(CENTER);
      ellipse(360,50,20,20);
      popMatrix();
  }
      
  else{
        pushMatrix();
        fill(255,255,0);
        ellipseMode(CENTER);
        ellipse(360,50,20,20);
        popMatrix();
    }
  if ((mouseOverLight2() == true)&&(mousePressed))  {  // If mouse is over square,
                
    if (l2=="n")
    {
      l2="e";
    }
    else
    {
    l2="n";
    }
    delay(20);
    myport.write(l2);               // send an H to indicate mouse is over square 
  }

  
    //Light3
      if (l3=="o"){
      pushMatrix();
      fill(255,255,255);
      ellipseMode(CENTER);
      ellipse(660,50,20,20);
      popMatrix();
  }
      
  else{
        pushMatrix();
        fill(255,255,0);
        ellipseMode(CENTER);
        ellipse(660,50,20,20);
        popMatrix();
    }
  if ((mouseOverLight3() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (l3=="o")
    {
      l3="f";
    }
    else
    {
    l3="o";
    }
    delay(20);
    myport.write(l3);               // send an H to indicate mouse is over square 
  }


  //FAN1
      if (f1=="j"){
      pushMatrix();
      fill(201,123,143);
      rectMode(CENTER);
      rect(232, 135, 100, 20); 
      rect(232, 135, 20, 100); 
      rect(232,135,20,20);
      popMatrix();
  }
      
  else{
        pushMatrix();
        translate(width/2,height/2);
        translate(-220, -190);
        rotate(millis() * 0.01 * TWO_PI / 10.0);
        fill(201,123,143);
        rectMode(CENTER);
        rect(0, 0, 100, 20);
        rect(0, 0, 20, 100); 
        rect(0,0,20,20);
        popMatrix();
    }
  if ((mouseOverFan1() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (f1=="j")
    {
      f1="a";
    }
    else
    {
    f1="j";
    }
    delay(20);
    myport.write(f1);               // send an H to indicate mouse is over square 
  }


  //FAN2
    if (f2=="k"){
      pushMatrix();
      fill(201,123,143);
      rectMode(CENTER);
      rect(532, 135, 100, 20); 
      rect(532, 135, 20, 100); 
      rect(532,135,20,20);
      popMatrix();
  }
      
  else{
        pushMatrix();
        translate(width/2,height/2);
        translate(80, -190);
        rotate(millis() * 0.01 * TWO_PI / 10.0);
        fill(201,123,143);
        rectMode(CENTER);
        rect(0, 0, 100, 20);
        rect(0, 0, 20, 100); 
        rect(0,0,20,20);
        popMatrix();
    }
  if ((mouseOverFan2() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (f2=="k")
    {
      f2="b";
    }
    else
    {
    f2="k";
    }
    delay(20);
    myport.write(f2);               // send an H to indicate mouse is over square 
  }
  

  //FAN3
  if (f3=="l"){
      pushMatrix();
      fill(201,123,143);
      rectMode(CENTER);
      rect(812, 135, 100, 20); 
      rect(812, 135, 20, 100); 
      rect(812,135,20,20);
      popMatrix();
  }
      
  else{
      pushMatrix();
      translate(width/2,height/2);
      translate(360, -190);
      rotate(millis() * 0.01 * TWO_PI / 10.0);
      fill(201,123,143);
      rectMode(CENTER);
      rect(0, 0, 100, 20); 
      rect(0, 0, 20, 100); 
      rect(0,0,20,20);  
      popMatrix();
    }
  if ((mouseOverFan3() == true)&&(mousePressed))  {  // If mouse is over square,
                 
    if (f3=="l")
    {
      f3="c";
    }
    else
    {
    f3="l";
    }
    delay(20);
    myport.write(f3);               // send an H to indicate mouse is over square 
  }
  nxx=MouseInfo.getPointerInfo().getLocation().x; 
nyy=MouseInfo.getPointerInfo().getLocation().y;

} 

//Fans
boolean mouseOverFan1() {        // Test if mouse is over square 
  return ((mouseX >= 82) && (mouseX <= 282) && (mouseY >= 95) && (mouseY <= 185)); 
}

boolean mouseOverFan2() {        // Test if mouse is over square 
  return ((mouseX >= 482) && (mouseX <= 582) && (mouseY >= 95) && (mouseY <= 185)); 
}

boolean mouseOverFan3() {        // Test if mouse is over square 
  return ((mouseX >= 762) && (mouseX <= 859) && (mouseY >= 95) && (mouseY <= 185)); 
}


//Lights
boolean mouseOverLight1() {        // Test if mouse is over square 
  return ((mouseX >= 50) && (mouseX <= 70) && (mouseY >= 40) && (mouseY <= 60)); 
}
boolean mouseOverLight2() {        // Test if mouse is over square 
  return ((mouseX >= 350) && (mouseX <= 370) && (mouseY >= 40) && (mouseY <= 60)); 
}
boolean mouseOverLight3() {        // Test if mouse is over square 
  return ((mouseX >= 650) && (mouseX <= 670) && (mouseY >= 40) && (mouseY <= 60)); 
}

//Doors
boolean mouseOverDoor1() {        // Test if mouse is over square 
  return ((mouseX >= 60) && (mouseX <= 120) && (mouseY >= 220) && (mouseY <= 310)); 
}
boolean mouseOverDoor2() {        // Test if mouse is over square 
  return ((mouseX >= 360) && (mouseX <= 420) && (mouseY >= 220) && (mouseY <= 310)); 
}
boolean mouseOverDoor3() {        // Test if mouse is over square 
  return ((mouseX >= 660) && (mouseX <= 720) && (mouseY >= 220) && (mouseY <= 310)); 
}
//Emergency CALL
boolean mouseOverEmCall() {        // Test if mouse is over square 
  return ((mouseX >= 655) && (mouseX <= 780) && (mouseY >= 400) && (mouseY <= 475)); 
}
boolean mouseOverEmCall1() {        // Test if mouse is over square 
  return ((mouseX >= 620) && (mouseX <= 667) && (mouseY >= 505) && (mouseY <= 550)); 
}
boolean mouseOverEmCall2() {        // Test if mouse is over square 
  return ((mouseX >= 680) && (mouseX <= 730) && (mouseY >= 505) && (mouseY <= 550)); 
}
boolean mouseOverEmCall3() {        // Test if mouse is over square 
  return ((mouseX >= 747) && (mouseX <= 795) && (mouseY >= 505) && (mouseY <= 550)); 
}

//Contacts
boolean mouseOverCont() {        // Test if mouse is over square 
  return ((mouseX >= 30) && (mouseX <= 170) && (mouseY >= 395) && (mouseY <= 425)); 
}

//News
boolean mouseOverNews() {        // Test if mouse is over square 
  return ((mouseX >= 380) && (mouseX <= 466) && (mouseY >= 424) && (mouseY <= 453)); 
}

//Buzzer
boolean mouseOverBuzzer() {        // Test if mouse is over square 
  return ((mouseX >= 390) && (mouseX <=464 ) && (mouseY >= 550) && (mouseY <= 615)); 
}

void serialEvent(Serial myPort) {
String bejovo = myPort.readStringUntil('\n');

if (bejovo != null) {
System.out.println(bejovo);
bejovo = trim(bejovo);

int[] potik = int(split(bejovo, ","));

if (potik.length >=2) {
 up= potik[0]; 
 down=potik[1];
 left=potik[2];
 right=potik[3];
 push=potik[4];
 
}

  if (up==1)
  { robby.mouseMove(nxx,nyy-5);
delay(10);
 }
 
  if (down==1)
  { robby.mouseMove(nxx,nyy+5);
delay(10);
 }
 
  if (left==1)
  { robby.mouseMove(nxx-5,nyy);
delay(10);
 }
 
  if (right==1)
  { robby.mouseMove(nxx+5,nyy);
delay(10);
 }
 
  if (push==1)
  { robby.mousePress(InputEvent.BUTTON1_MASK );
    delay(20);
    robby.mouseRelease(InputEvent.BUTTON1_MASK );
delay(10);
 }}}