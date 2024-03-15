void main() {
  // Create a list of fruits represented as maps
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
  ];

  // Display original fruit details
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  // Apply discount of 10%
  applyPriceDiscount(fruits, 10);

}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        'Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price'].toStringAsFixed(2)}');
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountedPrice = originalPrice - (originalPrice * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }

  // Display fruit details after applying discount
  print('Fruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);

}



