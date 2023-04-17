  const int buttonPin = 2;

  
  const int LED = 6;
  const int LED2 = 7;
  const int LED3 = 11;
  const int LED4 = 10;
  const int LED5 = 9;
  const int LED6 = 8;

  int buttonState = 0;


void setup() {
  // put your setup code here, to run once:
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(buttonPin, OUTPUT);
}

void loop() {

    buttonState = digitalRead(buttonPin);


  // put your main code here, to run repeatedly:

    if (buttonState == HIGH) {
 
     digitalWrite(LED, HIGH);
     delay(500);
     digitalWrite(LED2, HIGH);
     delay(500);
     digitalWrite(LED3, HIGH);
     delay(500);
     digitalWrite(LED6, HIGH);
     delay(500);
     digitalWrite(LED5, HIGH);
     delay(500);
     digitalWrite(LED4, HIGH);
     delay(500);
     analogWrite(LED, 55);
     delay(500);
     analogWrite(LED2, 55);
     delay(500);
     analogWrite(LED3, 55);
     delay(500);
     analogWrite(LED6, 55);
     delay(500);
     analogWrite(LED5, 55);
     delay(500);
     analogWrite(LED4, 55);
     delay(500);

     
    } else {
      
     digitalWrite(LED, LOW);
     digitalWrite(LED2, LOW);
     digitalWrite(LED3, LOW);
     digitalWrite(LED4, LOW);
     digitalWrite(LED5, LOW);
     digitalWrite(LED6, LOW);

    }

 
    
 
}
