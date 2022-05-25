/*
VAMO MODELAR ALGUNS COMPONENTES DE UMA APLICAÇÃO DE CORRIDA DE APLICATIVOS

teremos
- motorista
- carro

criarObjetoCarro
criarObjetoMotorista
mostrarInfoMotorista

*/

import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:desafio01/revision/car.dart';

import 'driver.dart';

void main() {
  print('Voce deseja realizar uma corrida?');
  readLine().listen(processLine);
}

Stream<String> readLine() {
  return stdin.transform(utf8.decoder).transform(const LineSplitter());
}

void processLine(String line) {
  List<String> inputs = line.split(' ');
  init(inputs[0]);
}

void delay() {
  sleep(Duration(seconds: 10));
}

void findDriver() {
  Car carro = Car(name: 'Argo', brand: 'Fiat', color: 'azul', id: 'HGI-3245');

  Driver motorista =
      Driver(car: carro, name: 'Edson', rate: 4.9, ridesNumber: 1000);

  print('''Seu Motorista é: ${motorista.name}, \n
    Avaliação: ${motorista.rate},\n
    Número de corridas: ${motorista.ridesNumber}, \n
    Carro: ${motorista.car.name}, ${motorista.car.brand}, ${motorista.car.color}, \n
    Placa: ${motorista.car.color}, 
    ''');
}

void init(String answer) {
  //Seu codigo aqui

  if (answer == 'yes') {
    print('Buscando Motorista, aguarde..');
    delay();

    findDriver();
    print('Corrida iniciada');
    delay();
    print('Chegamos no seu destino! Até mais!');
    exit(0);
  } else {
    exit(0);
  }

  // print('Voce deseja realizar uma corrida?');
}
