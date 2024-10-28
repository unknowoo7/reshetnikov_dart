import 'dart:io';

void main() {
  int val1 = int.parse(stdin.readLineSync()!);
  int val2 = int.parse(stdin.readLineSync()!);

  print("Programm #1.");
  programm_1(val1, val2);

  
  print("Programm #2.");
  programm_2(val1, val2);
}

void programm_1(int val1, int val2) {
  if (val1 * val2 > 400) {
    print(val1 * val2);
  } else {
    print(val1 + val2);
  }
}

void programm_2(int val1, int val2) {
  switch(val1 * val2 > 400) {
    case (true) :
      print(val1 * val2);
    case(false):
      print(val1 + val2);
  }
}

/**
 * Напишите две версии программы (c if и switch), 
 * в которой пользователь вводит 2 значения: val1, val2. 
 * Если их произведение больше 400, то в терминал выводится 
 * получаемое значение, иначе выведите их сумму
 */
