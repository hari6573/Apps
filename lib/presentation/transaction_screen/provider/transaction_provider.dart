import 'package:flutter/material.dart';
import 'package:hari_s_application11/core/app_export.dart';
import 'package:hari_s_application11/presentation/transaction_screen/models/transaction_model.dart';

/// A provider class for the TransactionScreen.
///
/// This provider manages the state of the TransactionScreen, including the
/// current transactionModelObj
class TransactionProvider extends ChangeNotifier {
  TransactionModel transactionModelObj = TransactionModel();

  @override
  void dispose() {
    super.dispose();
  }
}
