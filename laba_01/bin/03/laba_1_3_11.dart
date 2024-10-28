import 'dart:io';

void main(List<String> arguments) {
  print("Enter you A:");
  String a = stdin.readLineSync()!;

  print("Enter you B:");
  String b = stdin.readLineSync()!;

  var res = a.split(' ').where((x) => !b.contains(x)).map((x) => int.parse(x) - 2);

  print('Res: ${res}');
}
