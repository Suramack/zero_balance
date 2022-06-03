import 'package:flutter/material.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/screen/02_budgeting_screen/components/01_progres_indicator.dart';
import 'package:zero_balance/src/screen/02_budgeting_screen/components/02_categories.dart';
import 'package:zero_balance/src/screen/02_budgeting_screen/components/03_recent_transaction.dart';

class BudgetingScreen extends StatefulWidget {
  const BudgetingScreen({Key? key}) : super(key: key);

  @override
  State<BudgetingScreen> createState() => _BudgetingScreenState();
}

class _BudgetingScreenState extends State<BudgetingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planning'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Expenese Overview
              const ProgressIndicatorWidget(),
              verticalSpace(20),
              //categories
              const CategoriesBudgetingWidget(),
              verticalSpace(20),
              //recent transactions
              const RecentTranscationBudgetingWidget(),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
