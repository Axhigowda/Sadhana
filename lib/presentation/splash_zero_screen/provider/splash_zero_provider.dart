import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/splash_zero_model.dart';

/// A provider class for the SplashZeroScreen.
///
/// This provider manages the state of the SplashZeroScreen, including the
/// current splashZeroModelObj

// ignore_for_file: must_be_immutable
class SplashZeroProvider extends ChangeNotifier {
  TextEditingController gmailController = TextEditingController();

  SplashZeroModel splashZeroModelObj = SplashZeroModel();

  @override
  void dispose() {
    super.dispose();
    gmailController.dispose();
  }
}
