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
int pot = 0;
// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS ANALOG SENSOR AND WRITES VALUE TO SERIAL PORT
const int SENSOR = A0; //sensor hooked up to analog pin A0
int val = 0;
void setup() {
    pinMode(LED, OUTPUT);
    pinMode(LED2, OUTPUT);
    pinMode(LED3, OUTPUT);
    pinMode(buttonPin, INPUT);
    pinMode (SENSOR, INPUT);
    Serial.begin(9600); // Start serial communication at 9600 baud
}
void loop() {
  val = analogRead(SENSOR); //read sensor and assign to variable called val
  pot = map(val, 0, 1023, 2, 255);
 // val = val / 4; //divide val by 4 or remap values to get byte-sized 0-255
  delay(100); // Wait 100 milliseconds
  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
 //Serial. println(val); //to send human-readable data to Arduino monitor
 // Serial.write(val);  //to send binary data to Processing
 //Serial.println(pot);
 Serial.write(pot);
  buttonState = digitalRead(buttonPin);
  Serial.write(buttonState);
  //Serial.println(buttonState);
  if (buttonState == HIGH) {
  digitalWrite(LED, HIGH);
  tone(piezo, 392.00, 800);
  delay(700);
  digitalWrite(LED, LOW);
  digitalWrite(LED2, HIGH);
  tone(piezo, 392.00, 800);
  delay(700);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, HIGH);
  tone(piezo, 392.00, 800);
  delay(700);
  digitalWrite(LED3, LOW);
  digitalWrite(LED, HIGH);
  tone(piezo, 311.13, 800);
  delay(600);
  digitalWrite(LED, LOW);
  digitalWrite(LED2, HIGH);
  tone(piezo, 466.16, 800);
  delay(600);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, HIGH);
  tone(piezo, 392.00, 800);
  delay(700);
  digitalWrite(LED3, LOW);
  digitalWrite(LED, HIGH);
  tone(piezo, 311.13, 800);
  delay(700);
  digitalWrite(LED, LOW);
  digitalWrite(LED2, HIGH);
  tone(piezo, 466.16, 800);
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
