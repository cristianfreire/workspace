void setup() {
 // Colocamos o pino 12 do Arduino como OUTPUT (saída)
  pinMode(12, OUTPUT);

}

void loop() {
 // Ativamos o pino 12 (colocando 5v nele)  
  digitalWrite(12, HIGH);

  // Aguardamos 1 segundo
  delay(150);

  // Desligamos o pino 12
  digitalWrite(12, LOW);

  // Aguardamos mais um segundo
  delay(150);

  // Este código irá se repetir eternamente
}
