//Angel Padilla - Darth Vader Theme 

//So in this sketch I essentially assigned the push button to play the 
//piezo notes as well as having those notes synced with the LED's. It's a 
//9 note chiptune melody of the Darth Vader Theme from Star Wars. 

const int buttonPin = 2;
const int piezo = 8;
const int LED = 9;
const int LED2 = 12;
const int LED3 = 11;


int buttonState = 0;

void setup() {

    pinMode(LED, OUTPUT);
    pinMode(LED2, OUTPUT);
    pinMode(LED3, OUTPUT);
    pinMode(buttonPin, INPUT);

}

void loop() {

  buttonState = digitalRead(buttonPin);

  if (buttonState == HIGH) {
  digitalWrite(LED, HIGH);
  tone(piezo, 392.00, 800);
  delay(700);
  digitalWrite(LED, LOW);
  digitalWrite(LED2, HIGH);
  tone(piezo, 392.00, 800);
  delay(1000);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, HIGH);
  tone(piezo, 392.00, 800);
  delay(1000);
  digitalWrite(LED3, LOW);
  digitalWrite(LED, HIGH);
  tone(piezo, 311.13, 800);
  delay(600);
  digitalWrite(LED, LOW);
  digitalWrite(LED2, HIGH);
  tone(piezo, 233.08, 800);
  delay(600);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, HIGH);
  tone(piezo, 392.00, 800);
  delay(600);
  digitalWrite(LED3, LOW);
  digitalWrite(LED, HIGH);
  tone(piezo, 311.13, 800);
  delay(1000);
  digitalWrite(LED, LOW);
  digitalWrite(LED2, HIGH);
  tone(piezo, 233.08, 800);
  delay(600);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, HIGH);
  tone(piezo, 392.00, 800);
  delay(600);
 

  digitalWrite(LED, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);


  

 
//I assigned the code so that after the chiptune is played, the LED's all go off
//at once. This is what I have so far.
  

  }
  }
