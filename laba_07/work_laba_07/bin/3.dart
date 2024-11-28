/**
 * Реализуйте класс «Книжный шкаф», который содержит информацию о максимальном весе хранимых книг и их количестве. Класс «Книга» должен содержать поля: название, автор, год издания, вес и стоимость книги. При добавлении книги в  шкаф осуществляется проверка по весу и количеству книг, которые может вместить шкаф в данный момент. Если один из этих параметров больше разрешенного, то книга в шкаф не добавляется. Дополнительно для книжного шкафа реализуйте методы поиска книги по автору, расчет полной стоимости и веса хранимых книг, получения списка книг, чья стоимость >= указанной. Также реализуйте возможность вывода текущих состояний объектов в терминал.
 */

class Book {
  final String title;
  final String author;
  final int year;
  final double weight;
  final double price;

  Book({
    required this.title,
    required this.author,
    required this.year,
    required this.weight,
    required this.price,
  });

  @override
  String toString() {
    return 'Book(title: $title, author: $author, year: $year, weight: $weight, price: $price)';
  }
}

class BookShelf {
  final double maxWeight;
  final int maxBooks;
  final List<Book> _books = [];

  BookShelf({
    required this.maxWeight,
    required this.maxBooks,
  });

  bool addBook(Book book) {
    if (_canAddBook(book)) {
      _books.add(book);
      return true;
    } else {
      print('Cannot add book "${book.title}". Exceeds weight or book count limits.');
      return false;
    }
  }

  bool _canAddBook(Book book) {
    return (_books.length < maxBooks) && (_currentWeight() + book.weight <= maxWeight);
  }

  List<Book> findBooksByAuthor(String author) {
    return _books.where((book) => book.author == author).toList();
  }

  double totalWeight() {
    return _currentWeight();
  }

  double totalCost() {
    return _books.fold(0, (sum, book) => sum + book.price);
  }

  List<Book> booksWithMinPrice(double minPrice) {
    return _books.where((book) => book.price >= minPrice).toList();
  }

  void showShelfContents() {
    print('Bookshelf state:');
    print('Maximum weight: $maxWeight');
    print('Maximum book count: $maxBooks');
    print('Current weight: ${_currentWeight()}');
    print('Total books: ${_books.length}');
    for (var book in _books) {
      print(book);
    }
  }

  double _currentWeight() {
    return _books.fold(0, (sum, book) => sum + book.weight);
  }
}

void main() {
  var shelf = BookShelf(maxWeight: 10.0, maxBooks: 5);
  var book1 = Book(title: 'Book A', author: 'Author 1', year: 2021, weight: 2.5, price: 100);
  var book2 = Book(title: 'Book B', author: 'Author 2', year: 2020, weight: 1.5, price: 150);

  shelf.addBook(book1);
  shelf.addBook(book2);
  
  print('Books by Author 1:');
  shelf.findBooksByAuthor('Author 1').forEach(print);
  
  print('Total weight of books on shelf: ${shelf.totalWeight()}');
  print('Total cost of books on shelf: ${shelf.totalCost()}');

  print('Books with price >= 120:');
  shelf.booksWithMinPrice(120).forEach(print);

  print('Current bookshelf contents:');
  shelf.showShelfContents();
}
