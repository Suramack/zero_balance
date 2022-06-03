import 'package:get/get.dart';

class RecentTransactionByCategoryViewController extends GetxController {
// Food category
  List<String> recentTransactionInFood = [];

  List<String> recentTransactionAmoutInFood = [];

  List<bool> recentTransactionStatusInFood = [];

  List<String> recentTransactionDateInFood = [];

  List<String> recentTransactionImageInFood = [];

// Entertainment category

  List<String> recentTransactionInEntertainment = [];

  List<String> recentTransactionAmoutInEntertainment = [];

  List<bool> recentTransactionStatusInEntertainment = [];

  List<String> recentTransactionDateInEntertainment = [];

  List<String> recentTransactionImageInEntertainment = [];

// Shopping category

  List<String> recentTransactionInShopping = [];

  List<String> recentTransactionAmoutInShopping = [];

  List<bool> recentTransactionStatusInShopping = [];

  List<String> recentTransactionDateInShopping = [];

  List<String> recentTransactionImageInShopping = [];

  void setRecentTransactionByCategory(String category, String name,
      double amount, bool status, DateTime date, String image) {
    switch (category) {
      case 'Food':
        recentTransactionInFood.add(name);
        recentTransactionAmoutInFood.add(amount.toString());
        recentTransactionStatusInFood.add(status);
        recentTransactionDateInFood.add(date.toString().substring(0, 10));
        recentTransactionImageInFood.add('assets/images/zomato_small_logo.png');
        break;

      case 'Entertainment':
        recentTransactionInEntertainment.add(name);
        recentTransactionAmoutInEntertainment.add(amount.toString());
        recentTransactionStatusInEntertainment.add(status);
        recentTransactionDateInEntertainment
            .add(date.toString().substring(0, 10));
        recentTransactionImageInEntertainment
            .add('assets/images/amazon_small_logo.png');
        break;

      case 'Shopping':
        recentTransactionInShopping.add(name);
        recentTransactionAmoutInShopping.add(amount.toString());
        recentTransactionStatusInShopping.add(status);
        recentTransactionDateInShopping.add(date.toString().substring(0, 10));
        recentTransactionImageInShopping
            .add('assets/images/flipkart_small_logo.png');
        break;

      default:
    }
    update();
  }
}
