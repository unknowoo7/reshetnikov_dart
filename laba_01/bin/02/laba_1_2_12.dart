import 'dart:io';

void main(List<String> arguments) {
  print("Enter you line:");
  String line = stdin.readLineSync()!;

  var res = line.split(' ').map((x) => double.parse(x).ceil());
  print(res);
}
