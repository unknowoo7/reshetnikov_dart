import 'dart:io';

void main(List<String> arguments) {
  print("Enter you A:");
  String a = stdin.readLineSync()!;

  print("Enter you B:");
  String b = stdin.readLineSync()!;

  print('Res: ${a.split(' ').every((x) => b.contains(x))}');
}
