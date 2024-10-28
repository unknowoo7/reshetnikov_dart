import 'dart:io';

void main(List<String> arguments) {
  print("Enter you line:");
  String line = stdin.readLineSync()!;

  print("Enter A: ");
  int a = int.parse(stdin.readLineSync()!);
  
  var res = line.split(' ').where((x) => int.parse(x) <= a);
  print(res);
}
