void setup() {
  pinMode(4, INPUT);
  pinMode(8, OUTPUT);
}

void loop() {
  if ( digitalRead(4) ){
    digitalWrite(8,HIGH);
  }

  else{
    digitalWrite(8,LOW);
  }

}
