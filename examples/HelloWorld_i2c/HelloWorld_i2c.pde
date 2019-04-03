#include <LiquidCrystalI2C.h>

LiquidCrystalI2C *lcd = new LiquidCrystalI2C(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);

void setup()
{
    lcd->begin(16,2);
    lcd->printRow(0, "Ghost");
    lcd->printRow(1, "Was here");
    delay(1000);
}

void loop()
{
    lcd->printRow(1, String(random(999)));
        
    delay(200);
}