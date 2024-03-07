import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A provider class for the HomeScreen.
///
/// This provider manages the state of the HomeScreen, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {
  HomeModel homeModelObj = HomeModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in homeModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in homeModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in homeModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected3(dynamic value) {
    for (var element in homeModelObj.dropdownItemList3) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected4(dynamic value) {
    for (var element in homeModelObj.dropdownItemList4) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
