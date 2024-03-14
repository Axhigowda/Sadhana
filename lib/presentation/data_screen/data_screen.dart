import 'package:flutter/material.dart';
import 'package:abhishek_s_application/core/app_export.dart';
import 'provider/data_provider.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DataScreenState createState() => DataScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: DataScreen(),
    );
  }
}

class DataScreenState extends State<DataScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse142,
                height: 333.v,
                width: 360.h,
              ),
              Spacer(),
              SizedBox(height: 44.v),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot20240112,
                height: 191.v,
                width: 326.h,
                radius: BorderRadius.circular(
                  14.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
