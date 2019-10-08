
int pushPin = 8;         
int left = 5;
int right = 4;
int up = 6;
int down = 7;
int valU=0;
int valD=0;
int valL=0;
int valR=0;
int valPush=0;
char dir='0';


void setup() {
  pinMode(9,OUTPUT);
  digitalWrite(9,HIGH);
  
  pinMode(pushPin,INPUT);
  pinMode(up,INPUT);
  pinMode(down,INPUT);
  pinMode(left,INPUT);
  pinMode(right,INPUT);
  
  Serial.begin(38400); // Default communication rate of the Bluetooth module
  
}
//
//void acknowledge(char dir,char val)
//{
//  Serial.write(dir);
//  l1:
//  if (Serial.available()>0)
//  {
//    aut=Serial.read();
//  }
//  else
//  goto l1;
//  if (aut='P')
//  {
//    
//  }
//  acknowledge(dir,val);
//}


char butdata(int pin)
{
  int val = analogRead(pin);
  if (val>850)
  return '1';
  else
  return '0';
}



void loop() {
 
l1:
  if (Serial.available()>0)
  {
    dir=Serial.read();
    //Serial.println(dir);
    if (dir=='U')
    {
      
      Serial.write(butdata(A0));
      Serial.flush();
    }
    else if (dir=='D')
    {
      
      Serial.write(butdata(A1));
      Serial.flush();
    }
    else if (dir=='L')
    {
      
      Serial.write(butdata(A2));
      Serial.flush();
    }
    else if (dir=='R')
    {
      
      Serial.write(butdata(A3));
      Serial.flush();
    }
    else if (dir=='P')
    {
      
      Serial.write(butdata(A4));
      Serial.flush();
    }
    else
    goto l1;
    
  }
}
