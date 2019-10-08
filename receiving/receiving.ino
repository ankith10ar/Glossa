#include <SoftwareSerial.h>

#define ledPin 13
char state;
char data[5]={'0','0','0','0','0'};
SoftwareSerial myserial (10,11);
void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  digitalWrite(ledPin, LOW);
  Serial.begin(9600); // Default communication rate of the Bluetooth module
  myserial.begin(38400);
}


void leds(int pin,char val)
{
   if (val == '1') {
  digitalWrite(pin, HIGH); // LED ON
  
 }
 else if (val == '0') {
  digitalWrite(pin, LOW); // LED ON
  
 }
}




void loop() {
l1:
//Serial.println(data);
  myserial.write('U');
  delay(100);
  if (myserial.available()>0)
  {
    state = myserial.read();
    if (state=='1')
    data[0]='1';
    else if (state=='0')
    data[0]='0';
    else
    goto l1;
  }
  else
  goto l1;

  l2:
  myserial.write('D');
  if (myserial.available()>0)
  {
    state = myserial.read();
    if (state=='1')
    data[1]='1';
    else if (state=='0')
    data[1]='0';
    else
    goto l2;
  }
  else
  goto l2;
l3:
  myserial.write('L');
  if (myserial.available()>0)
  {
    state = myserial.read();
    if (state=='1')
    data[2]='1';
    else if (state=='0')
    data[2]='0';
    else
    goto l3;
  }
  else
  goto l3;
l4:
  myserial.write('R');
  if (myserial.available()>0)
  {
    state = myserial.read();
    if (state=='1')
    data[3]='1';
    else if (state=='0')
    data[3]='0';
    else
    goto l4;
  }
  else
  goto l4;
l5:
  myserial.write('P');
  if (myserial.available()>0)
  {
    state = myserial.read();
    if (state=='1')
    data[4]='1';
    else if (state=='0')
    data[4]='0';
    else
    goto l5;
  }
  else
  goto l5;

Serial.print(data[0]);
Serial.print(",");

Serial.print(data[1]);
Serial.print(",");

Serial.print(data[2]);
Serial.print(",");

Serial.print(data[3]);
Serial.print(",");

Serial.print(data[4]);
Serial.println();
 delay(10);
}
