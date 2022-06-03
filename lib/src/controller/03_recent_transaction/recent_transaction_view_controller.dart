import 'package:get/get.dart';

class TransactionViewController extends GetxController {
  List<String> recentTransactionBrandName = [];

  List<String> recentTransactionCashByBrand = [];

  List<String> recentTransactionDateByBrand = [];

  List<String> recentTransactionBarndLogo = [];
  void addRecentTransaction(
      String companyName, double amount, DateTime date, String companyLogo) {
    recentTransactionBrandName.add(companyName);
    recentTransactionCashByBrand.add(amount.toString());
    recentTransactionDateByBrand.add(date.toString());
    switch (companyLogo) {
      case 'Swiggy':
        recentTransactionBarndLogo
            .add('assets/images/swiggy_small_logo.png'.toString());
        break;

      case 'Zomato':
        recentTransactionBarndLogo
            .add('assets/images/zomato_small_logo.png'.toString());
        break;

      case "McDonald's":
        recentTransactionBarndLogo
            .add('assets/images/mcd_small_logo.png'.toString());
        break;

      case 'Food':
        recentTransactionBarndLogo
            .add('assets/images/swiggy_small_logo.png'.toString());
        break;

      case 'Entertainment':
        recentTransactionBarndLogo
            .add('assets/images/netflix_small_logo.png'.toString());
        break;

      case 'Amazon Prime':
        recentTransactionBarndLogo
            .add('assets/images/amazon_logo.png'.toString());
        break;

      case 'Sony Liv':
        recentTransactionBarndLogo
            .add('assets/images/netflix_small_logo.png'.toString());
        break;

      case 'Hotstar':
        recentTransactionBarndLogo
            .add('assets/images/amazon_small_logo.png'.toString());
        break;

      case 'Shopping':
        recentTransactionBarndLogo
            .add('assets/images/flipkart_small_logo.png'.toString());
        break;

      case 'Amazon':
        recentTransactionBarndLogo
            .add('assets/images/amazon_small_logo.png'.toString());
        break;

      case 'Myntra':
        recentTransactionBarndLogo
            .add('assets/images/amazon_small_logo.png'.toString());
        break;

      case 'Flipkart':
        recentTransactionBarndLogo
            .add('assets/images/flipkart_small_logo.png'.toString());
        break;
      default:
    }

    update();
  }
}
