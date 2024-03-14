import 'package:flutter/material.dart';
import '../models/splash_one_model.dart';

/// A provider class for the SplashOneScreen.
///
/// This provider manages the state of the SplashOneScreen, including the
/// current splashOneModelObj
class SplashOneProvider extends ChangeNotifier {
  TextEditingController buttonsController = TextEditingController();

  SplashOneModel splashOneModelObj = SplashOneModel();

  @override
  void dispose() {
    super.dispose();
    buttonsController.dispose();
  }
}
