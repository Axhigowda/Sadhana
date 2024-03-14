import 'package:flutter/material.dart';
import '../models/data_model.dart';

/// A provider class for the DataScreen.
///
/// This provider manages the state of the DataScreen, including the
/// current dataModelObj
class DataProvider extends ChangeNotifier {
  DataModel dataModelObj = DataModel();

  @override
  void dispose() {
    super.dispose();
  }
}
