import 'car.dart';

class Driver {
  // Motorista
  final String name;
  final int ridesNumber; //ridesNumber
  final double rate;
  final Car car;

  Driver(
      {required this.name,
      required this.ridesNumber,
      required this.rate,
      required this.car});
}