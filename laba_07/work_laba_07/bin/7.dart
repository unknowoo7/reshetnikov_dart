/**
  Реализуйте класс Product и Order. Order может состоять из любого количества Products, которые составляют его итоговую стоимость.
  Предусмотрите возможность предоставления скидок на определенные товары в заказе и на общую стоимость заказа. Обеспечьте возможность 
  получения информации о стоимости товаров определенного типа в заказе и вывода текущего состояния объектов на терминал.
 */

class Product {
  final String name;
  final String type;
  final double price;
  double discount;

  Product({
    required this.name,
    required this.type,
    required this.price,
    this.discount = 0.0,
  });

  double get discountedPrice {
    return price * (1 - discount);
  }

  @override
  String toString() {
    return 'Product(name: $name, type: $type, price: $price, discount: $discount, discountedPrice: $discountedPrice)';
  }
}

class Order {
  final List<Product> _products = [];
  double orderDiscount = 0.0;

  void addProduct(Product product) {
    _products.add(product);
  }

  double totalCost() {
    double total = _products.fold(0, (sum, product) => sum + product.discountedPrice);
    return total * (1 - orderDiscount);
  }

  double totalCostByType(String type) {
    return _products
        .where((product) => product.type == type)
        .fold(0, (sum, product) => sum + product.discountedPrice);
  }

  void applyOrderDiscount(double discount) {
    if (discount >= 0.0 && discount <= 1.0) {
      orderDiscount = discount;
    } else {
      print('Invalid order discount. Must be between 0 and 1.');
    }
  }

  void showOrderDetails() {
    print('Order Details:');
    print('Order discount: $orderDiscount');
    print('Products:');
    for (var product in _products) {
      print(product);
    }
    print('Total cost with order discount: ${totalCost()}');
  }
}

void main() {
  var product1 = Product(name: 'Laptop', type: 'Electronics', price: 1000, discount: 0.1);
  var product2 = Product(name: 'Headphones', type: 'Electronics', price: 200);
  var product3 = Product(name: 'Coffee Mug', type: 'Kitchenware', price: 20, discount: 0.05);

  var order = Order();
  order.addProduct(product1);
  order.addProduct(product2);
  order.addProduct(product3);

  order.applyOrderDiscount(0.1);

  print('Total cost for Electronics: ${order.totalCostByType('Electronics')}');
  print('Total cost for Kitchenware: ${order.totalCostByType('Kitchenware')}');

  print('Full order details:');
  order.showOrderDetails();
}
