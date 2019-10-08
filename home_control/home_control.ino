char dir='0';
#include <SoftwareSerial.h>
SoftwareSerial mySerial(9, 10); // RX, TX

void setup() {
  pinMode(2,OUTPUT);
  digitalWrite(2,LOW);
  
  pinMode(3,OUTPUT);
  digitalWrite(3,LOW);
  
  pinMode(4,OUTPUT);
  digitalWrite(4,LOW);

  pinMode(5,OUTPUT);
  digitalWrite(5,LOW);
  
  pinMode(6,OUTPUT);
  digitalWrite(6,LOW);
  
    pinMode(7,OUTPUT);
  digitalWrite(7,LOW);
  
  pinMode(8,OUTPUT);
  digitalWrite(8,LOW);

  pinMode(11,OUTPUT);
  digitalWrite(11,LOW);



 

  Serial.begin(9600);
}

void loop() {

  if (Serial.available()>0)
  {
    dir = Serial.read();
    if (dir=='d')
    digitalWrite(2,HIGH);
    else if (dir=='m')
    digitalWrite(2,LOW);
    
    if (dir=='e')
    digitalWrite(3,HIGH);
    else if (dir=='n')
    digitalWrite(3,LOW);
    
    if (dir=='f')
    digitalWrite(4,HIGH);
    else if (dir=='o')
    digitalWrite(4,LOW);

    if (dir=='v')
    {
      mySerial.begin(9600);
      delay(2000);
      mySerial.println("ATD8639002348;"); 
      if (mySerial.available())
      Serial.write(mySerial.read());
    }
    if (dir=='x')
    {
      mySerial.begin(9600);
      delay(2000);
      mySerial.println("ATD900366803;"); 
      if (mySerial.available())
      Serial.write(mySerial.read());
    }
    if (dir=='z')
    {
      mySerial.begin(9600);
      delay(2000);
      mySerial.println("ATD9738128026;"); 
      if (mySerial.available())
      Serial.write(mySerial.read());
    }

    if (dir=='a')
    digitalWrite(5,HIGH);
    else if (dir=='j')
    digitalWrite(5,LOW);

    
    if (dir=='b')
    digitalWrite(7,HIGH);
    else if (dir=='k')
    digitalWrite(7,LOW);



     if (dir=='B')
    digitalWrite(11,HIGH);
    else if (dir=='A')
    digitalWrite(11,LOW);
    
  }
  

}
