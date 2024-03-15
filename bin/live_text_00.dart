void displayFruitDetails(fruitLists) {
  for (var fruit in fruitLists) {
    print("|-> Name: ${fruit['name']}");
    print("|-> Color: ${fruit['color']}");
    print("|-> Price: ${fruit['price']}");
    print("-------------------------------------------");
  }
}

void applyPriceDiscount(fruitLists,discountPercentage) {
  for (var fruit in fruitLists) {
    fruit['price'] = fruit['price'] - (fruit['price'] * 10) / 100;
  }
  displayFruitDetails(fruitLists);
}

void main() {
  List<Map<String, dynamic>> fruitLists = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
  ];

  print("-------------------------------------------");
  print("Original Fruit Details before Discount: ");
  print("-------------------------------------------");
  displayFruitDetails(fruitLists);

  print("|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|");

  print("-------------------------------------------");
  print("Fruit Details After Applying 10% Discount: ");
  print("-------------------------------------------");
  applyPriceDiscount(fruitLists,10);
}
