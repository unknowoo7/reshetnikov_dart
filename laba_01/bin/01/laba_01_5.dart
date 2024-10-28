import 'dart:io';

void main(List<String> arguments) {
  print("Enter you line:");
  String line = stdin.readLineSync()!;

  String start = line[0];
  String midle = line[(line.length / 2).toInt()];
  String end = line[line.length - 1];

  print(start + midle + end);
}
