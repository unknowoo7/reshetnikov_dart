import 'dart:io';

void main(List<String> arguments) {
  print("Enter you line:");
  String? line = stdin.readLineSync();
  line = line?.replaceAll("a", "b");
  print(line ?? "unknowe");
}
