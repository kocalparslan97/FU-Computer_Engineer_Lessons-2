
#include<LiquidCrystal.h>
LiquidCrystal lcd(2, 3, 4, 5, 6, 7); //arayuz pin ayarlari

void setup() {
  
lcd.begin(16, 2);



}

void loop() {

for(int i=-4; i<16; i++){
  lcd.clear();
  lcd.setCursor(i,0);
  lcd.print("MERT");
  delay(1000);
}


}
