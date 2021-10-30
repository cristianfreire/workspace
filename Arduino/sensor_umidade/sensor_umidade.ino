//Programa: Monitoracao de planta usando Arduino
//Autor: Cristian Freire Passos, Lucas Carvalho, Mikael Hyden, João Victor

#define pino_sinal_analogico A1
#define pino_led_vermelho 5
#define pino_led_amarelo 6
#define pino_led_azul 7
 
int valor_analogico;

void setup()
{
  Serial.begin(9600);
  pinMode(pino_sinal_analogico, INPUT);
  pinMode(pino_led_vermelho, OUTPUT);
  pinMode(pino_led_amarelo, OUTPUT);
  pinMode(pino_led_azul, OUTPUT);
}
 
void loop()
{
  //Le o valor do pino A1 do sensor
  valor_analogico = analogRead(pino_sinal_analogico);
 
  //Mostra o valor da porta analogica no serial monitor
  Serial.print("Porta analogica: ");
  Serial.print(valor_analogico);
 
  //Solo umido, acende o led azul
  if (valor_analogico < 400)
  {
    Serial.println(" Status: Solo umido");
    apagaleds();
    digitalWrite(pino_led_azul, HIGH);

  }
 
  //Solo com umidade moderada, acende led amarelo
  else if (valor_analogico > 400 && valor_analogico < 800)
  {
    Serial.println(" Status: Umidade moderada");
    apagaleds();
    //digitalWrite(pino_led_amarelo, HIGH);
  }
 
  //Solo seco, acende led vermelho
  else {
    Serial.println(" Status: Solo seco");
    apagaleds();
    digitalWrite(pino_led_vermelho, HIGH);
  }

  delay(1000);

 
}

void apagaleds()
{
  digitalWrite(pino_led_vermelho, LOW);
  digitalWrite(pino_led_amarelo, LOW);
  digitalWrite(pino_led_azul, LOW);
}
 
