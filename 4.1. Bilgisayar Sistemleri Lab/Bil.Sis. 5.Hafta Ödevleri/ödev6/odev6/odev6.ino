
#include<LiquidCrystal.h>
LiquidCrystal lcd(2, 3, 4, 5, 6, 7); // sets the interfacing pins

void setup() {
  // put your setup code here, to run once:
lcd.begin(16, 2);

lcd.setCursor(0,0);
lcd.print("MERT INCIDELEN");
lcd.setCursor(0,1);
lcd.print("170260101");
}

void loop() {


}
