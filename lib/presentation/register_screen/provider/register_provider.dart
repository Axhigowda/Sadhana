import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/register_model.dart';

/// A provider class for the RegisterScreen.
///
/// This provider manages the state of the RegisterScreen, including the
/// current registerModelObj

// ignore_for_file: must_be_immutable
class RegisterProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();

  RegisterModel registerModelObj = RegisterModel();

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }
}
