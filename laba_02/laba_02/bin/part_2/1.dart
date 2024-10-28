import 'dart:io';

void main() {
  String valueInput = stdin.readLineSync()!;
  (num, String) value = (valueInput.length, valueInput[0]);

  if (0 < value.$1 && value.$1 < 15 ) {
    print(valueInput);
  } else if (value.$2 == 'W') {
    print(valueInput);
  } else {
    print("Pattern no matched");
  }
  
  

}
