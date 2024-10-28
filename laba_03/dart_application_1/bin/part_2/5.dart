import 'dart:io';


/**
 * Пользователь вводит с клавиатуры положительное число. Проверьте
 * установлен ли ее правый бит в единицу или нет. Если нет, то установите и
 * выведите полученный результат в двоичном формате в терминал.
 */

void main() {
  String two_bit_num = int.parse(stdin.readLineSync()!).toRadixString(2);

  if (!two_bit_num.endsWith('1')) {
    two_bit_num = two_bit_num.substring(0, two_bit_num.length - 1) + '1';
    print(two_bit_num);
  } else {
    print(two_bit_num);
  }

}
