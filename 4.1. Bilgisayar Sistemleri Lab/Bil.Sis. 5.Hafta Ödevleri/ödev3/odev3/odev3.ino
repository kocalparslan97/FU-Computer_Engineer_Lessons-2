
int ledler[] = {2, 3, 4, 5, 6, 7, 8, 9};
byte say;

void setup() {
  pinMode(2,OUTPUT);   
  pinMode(3,OUTPUT); 
  pinMode(4,OUTPUT); 
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);
  pinMode(10,INPUT);
  say = 0;
}

void loop(void)
{
  if(digitalRead(10)==1){
    Binary(say++);
    delay(200);
  }
  
}

void Binary(byte n)
{
  for (int i = 0; i < 8; i++) {
    digitalWrite(ledler[i], n & 1);
    n = n/2;
  }
}
