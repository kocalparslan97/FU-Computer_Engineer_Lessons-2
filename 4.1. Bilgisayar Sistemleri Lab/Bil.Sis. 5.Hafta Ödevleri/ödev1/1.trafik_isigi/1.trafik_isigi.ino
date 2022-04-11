void setup() {
  pinMode(4, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
}

void loop() {
  digitalWrite(8, HIGH);  
  delay(10000); 
  digitalWrite(8, LOW);
  digitalWrite(7, HIGH);
  delay(2000);   
  digitalWrite(7, LOW);
  digitalWrite(4, HIGH);
  delay(10000); 
  digitalWrite(4, LOW);
  digitalWrite(7, HIGH);
  delay(3000);   
  digitalWrite(7, LOW);
}
