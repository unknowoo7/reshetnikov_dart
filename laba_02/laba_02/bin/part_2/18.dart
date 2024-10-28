/**
 * Извлеките данные по габаритам коробки, 
 * рассчитайте ее объем и выведите в терминал полученный результат.
 */

void main() {
  var data = {
    "id": 25,
    "box": {
      "width": 15,
      "height": 25,
      "length": 5
    }
  };

  try {
    Map<String, int> box = data["box"] as Map<String, int>;
    int sum = box.values.reduce((value, element) => value * element);
    print(sum);
  } catch(e) {
    print(e);
  }

}