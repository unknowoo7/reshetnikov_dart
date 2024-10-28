import 'dart:io';

void main(List<String> arguments) {
  print("Enter you A:");
  String a = stdin.readLineSync()!;

  print("Enter you B:");
  String b = stdin.readLineSync()!;

  var y = b.split(' ').map((x) => int.parse(x));

  var res = a.split(' ')
             .map((x) => int.parse(x))
             .where((x) => y.contains(x))
             .reduce((x, y) => x + y);

  print('Res: ${res}');
}
