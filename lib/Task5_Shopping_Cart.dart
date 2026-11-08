
abstract class Product {
  String name;
  double price;

  Product({required this.name, required this.price});
  double calculateDiscount();
}

class Electronics extends Product {
  num? discountElectronics;

  Electronics({
    required String name,
    required double price,
    this.discountElectronics = 10,
  }) : super(name: name, price: price);

  @override
  double calculateDiscount() {
    double amount = price * (discountElectronics ?? 0) / 100;
    return amount;
  }
}

class Clothing extends Product {
  num? discountClothing;

  Clothing({
    required String name,
    required double price,
    this.discountClothing = 15,
  }) : super(name: name, price: price);

  @override
  double calculateDiscount() {
    double amount = price * (discountClothing ?? 0) / 100;
    return amount;
  }
}

class ShoppingCart {
  List<Product> product = [];

  void addProduct(Product pro) {
    product.add(pro);
  }

  void removeProduct(Product pro) {
    product.remove(pro);
  }

  double calculateTotal() {
    double total = 0.0;

    for (var pro in product) {
      total += pro.price - pro.calculateDiscount();
    }

    return total;
  }

  void printReceipt() {
    if (product.isEmpty) {
      print("Cart is empty : ");
      return;
    }

    print( "Shopping Cart Receipt ");
    for (var pro in product) {
      print('${pro.name}: ${pro.price} - Discount: ${pro.calculateDiscount()}');
    }
    print('Total: ${calculateTotal()}');
  }
}

void main() {
  final cart = ShoppingCart();
  final iphone = Electronics(name: "Iphone", price: 85000);
  final samsung = Electronics(name: "Samsung", price: 1500);
  final jacket = Clothing(name: "Jacket", price: 1200);
  final tShirt = Clothing(name: "T-Shirt", price: 350);
  final bintabon = Clothing(name: "Bintabon waideleg", price: 600);

  cart.addProduct(iphone);
  cart.addProduct(samsung);
  cart.addProduct(jacket);
  cart.addProduct(tShirt);
  cart.addProduct(bintabon);
  print("~~~~ Cart add Product ~~~~");
  cart.printReceipt();
 
  cart.removeProduct(samsung);
  cart.removeProduct(tShirt);
 
  print('');
  print("~~~~~ Cart remove Product ~~~~~~");
  cart.printReceipt();

  print("The final account : ${cart.calculateTotal()}");
}
