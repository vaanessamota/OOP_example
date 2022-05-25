
import 'dart:convert';
import 'dart:io';

import 'package:desafio01/models/main.dart';

void main() {
  print('Voce deseja realizar uma corrida?');
  readLine().listen(processLine);
}

Stream<String> readLine() {
  // ignore: prefer_typing_uninitialized_variables
  var utf8;
  return stdin.transform(utf8.decoder).transform(const LineSplitter());
}

void processLine(String line) {
  List<String> inputs = line.split(' ');
  init(inputs[0]);
}