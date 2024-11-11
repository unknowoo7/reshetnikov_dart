/**
 * На вход функции поступает один из символов «>», «<», «=». Используя 
 * механизм замыканий, сравните два значения, подаваемые на вход 
 * возвращаемой функции. В результате должно возвращаться true, или 
 * false. В том случае, когда на вход объемлющей функции подается
 */


import "dart:io";

void main() {
  print("Result 10 > 5: ${comparison(">")(10, 5)}");
  print("Result 10 < 5: ${comparison("<")(10, 5)}");
  print("Result 10 = 5: ${comparison("=")(10, 5)}");
}

bool Function(int, int) comparison(String operator) {
  switch(operator) {
    case ">": 
      return (int a, int b) => a > b;
    case "<": 
      return (int a, int b) => a < b;
    case "=": 
      return (int a, int b) => a == b;
    default:
      return (int a, int b) => false;
  }
}