import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenViewController extends GetxController {
  String get userName => 'User';

  String get userSubtitle => "Let's help you stay on top of your finances";

  double expanse = 0;

  double sliderMinValue = 0;

  double sliderMaxValue = 100000;

  int selectedSubCategoryIndex = 0;

  TextEditingController amountTextEditingController = TextEditingController();

  List<double> percenageExpense = [
    0,
    0,
    0,
  ];
  List<String> get categoryTypes => [
        'Food',
        'Entertainment',
        'Shopping',
      ];

  List<String> get paymentTypes => [
        'GPay',
        'PayTM',
        'PhonePay',
        'CreditCard',
        'DebitCard',
        'COD',
      ];

  List<List<String>> get subCategory => [
        [
          categoryTypes[0],
          'Swiggy',
          'Zomato',
          "McDonald's",
        ],
        [
          categoryTypes[1],
          'Amazon Prime',
          'Sony Liv',
          'Hotstar',
        ],
        [
          categoryTypes[2],
          'Amazon',
          'Myntra',
          'Flipkart',
        ]
      ];

  List<List<String>> get subCategoryPrize => [
        [
          categoryTypes[0],
          '600',
          '1200',
          "250",
        ],
        [
          categoryTypes[1],
          '300',
          '340',
          '200',
        ],
        [
          categoryTypes[2],
          '3000',
          '1000',
          '300',
        ]
      ];

// totalExpenseByCategory
  List<double> totalExpenseByCategory = [0, 0, 0];

  List<Icon> get favouriteCategoryList => const [
        Icon(Icons.brunch_dining_rounded),
        Icon(Icons.movie_outlined),
        Icon(Icons.shopping_bag_rounded)
      ];
  List<String> get foodBrands => [
        'assets/images/swiggy_small_logo.png',
        'assets/images/zomato_small_logo.png',
        'assets/images/mcd_small_logo.png'
      ];

// Appwise data variable
  List<String> recentAppWiseTransactionLogoForFood = [];

  List<String> recentAppWiseTransactionNameForFood = [];

  List<double> recentAppWiseTransactionAmountForFood = [];

  List<String> recentAppWiseTransactionLogoForEntertainment = [];

  List<String> recentAppWiseTransactionNameForEntertainment = [];

  List<double> recentAppWiseTransactionAmountForEntertainment = [];

  List<String> recentAppWiseTransactionLogoForShopping = [];

  List<String> recentAppWiseTransactionNameForShopping = [];

  List<double> recentAppWiseTransactionAmountForShopping = [];

  //

  List<String> get shoppingBrand => [];

  String selectedCategory = 'Food';

  String selectedMerchant = 'Food';

  String selectedpaymentType = 'GPay';

  List<double> foodcategoryExsenseList = [];

  List<double> entertainementcategoryExsenseList = [];

  List<double> shoppingcategoryExsenseList = [];

  double foodExpenseTotal = 0;

  double entertainmentExpenseTotal = 0;

  double shoppingExpenseTotal = 0;

  DateTime selectedDate = DateTime.now();

// Adding Expenese
  void addExpense(double value) {
    expanse = expanse + value;
    update();
  }

  void setSelectedCategory(String category) {
    selectedCategory = category;
    update();
  }

  void setSelectedPayment(String payment) {
    selectedpaymentType = payment;
    update();
  }

  void setSelectedMerchant(String merchant) {
    selectedMerchant = merchant;
    update();
  }

  void setSelectedSubcategoryIndex(String category) {
    switch (category) {
      case 'Food':
        selectedSubCategoryIndex = 0;
        break;
      case 'Entertainment':
        selectedSubCategoryIndex = 1;
        break;
      case 'Shopping':
        selectedSubCategoryIndex = 2;
        break;
      default:
    }
    update();
  }

  void setCategoryExpenseInPercentage(String category, double amount) {
    switch (category) {
      case 'Food':
        foodExpenseTotal = foodExpenseTotal + amount;
        percenageExpense[0] = (foodExpenseTotal / sliderMaxValue) > 1
            ? 1
            : (foodExpenseTotal / sliderMaxValue);
        totalExpenseByCategory[0] = foodExpenseTotal;
        break;
      case 'Entertainment':
        entertainmentExpenseTotal = entertainmentExpenseTotal + amount;
        percenageExpense[1] = (entertainmentExpenseTotal / sliderMaxValue) > 1
            ? 1
            : (entertainmentExpenseTotal / sliderMaxValue);
        totalExpenseByCategory[1] = entertainmentExpenseTotal;
        break;
      case 'Shopping':
        shoppingExpenseTotal = shoppingExpenseTotal + amount;
        percenageExpense[2] = (shoppingExpenseTotal / sliderMaxValue) > 1
            ? 1
            : (shoppingExpenseTotal / sliderMaxValue);
        totalExpenseByCategory[2] = shoppingExpenseTotal;
        break;
      default:
    }
    update();
  }

// adding Date to recent transaction
  void addDateToRecentTransaction(DateTime date) {
    selectedDate = date;
    update();
  }
//app wise transaction

  void addRecentAppWiseTransaction(
      String logo, String name, String amount, String category) {
    switch (category) {
      case 'Food':
        recentAppWiseTransactionLogoForFood
            .add('assets/images/swiggy_small_logo.png');
        recentAppWiseTransactionNameForFood.add(name.toString());
        recentAppWiseTransactionAmountForFood.add(double.parse(amount));
        break;
      case 'Entertainment':
        recentAppWiseTransactionLogoForEntertainment
            .add('assets/images/amazon_small_logo.png');
        recentAppWiseTransactionNameForEntertainment.add(name.toString());
        recentAppWiseTransactionAmountForEntertainment
            .add(double.parse(amount));
        break;
      case 'Shopping':
        recentAppWiseTransactionLogoForShopping
            .add('assets/images/flipkart_small_logo.png');
        recentAppWiseTransactionNameForShopping.add(name.toString());
        recentAppWiseTransactionAmountForShopping.add(double.parse(amount));
        break;
      default:
    }
    update();
  }
}
