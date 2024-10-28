import 'dart:io';

void main(List<String> arguments) {
    print("Enter you line:");
    String line = stdin.readLineSync()!;
    String res = line.split('').reversed.join();
    print('Res - ${res}');
}
