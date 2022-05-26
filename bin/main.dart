import 'dart:io';

import 'package:desafio01/models/car.dart';
import 'package:desafio01/models/driver.dart';

void main() {
  print('Voce deseja realizar uma corrida? Sim ou Não');
  String? answer = stdin.readLineSync();
  initRide(answer);
}

void initRide(String? answer) {
  if (answer == 'Sim' || answer == 'S') {
    loading('Buscando Motorista! Aguarde...');
    findDriver();
    print('Corrida iniciada');
    loading('"Dirigindo................."');
    print('Chegamos no seu destino! Até mais!');
    exit(0);
  } else if (answer == 'Nao' || answer == 'N') {
    exit(0);
  } else {
    print('Respota Inválida!');
    main(); // RECURSÃOOOO
  }
}

void loading(String msg) {
  for (var count = 1; count <= 3; count++) {
    print(msg);
    delay(3);
  }
}

void delay(int seconds) {
  sleep(Duration(seconds: seconds));
}

void findDriver() {
  Car carro = Car(name: 'Argo', brand: 'Fiat', color: 'azul', id: 'HGI-3245');

  Driver motorista =
      Driver(car: carro, name: 'Edson', rate: 4.9, ridesNumber: 1000);

  printDriverInfo(motorista);
}

void printDriverInfo(Driver motorista) {
  print(
      '''Seu Motorista é: ${motorista.name}, \n
         Avaliação: ${motorista.rate},\n
         Número de corridas: ${motorista.ridesNumber}, \n
         Carro: ${motorista.car.name}, ${motorista.car.brand}, ${motorista.car.color}, \n
         Placa: ${motorista.car.id}, 
    ''');
}