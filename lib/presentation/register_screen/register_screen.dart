import 'package:abhishek_s_application/widgets/custom_text_form_field.dart';
import 'package:abhishek_s_application/widgets/custom_outlined_button.dart';
import 'package:abhishek_s_application/widgets/custom_elevated_button.dart';
import 'models/register_model.dart';
import 'package:flutter/material.dart';
import 'package:abhishek_s_application/core/app_export.dart';
import 'provider/register_provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  RegisterScreenState createState() => RegisterScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegisterProvider(), child: RegisterScreen());
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFour(context),
                  SizedBox(height: 48.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text("lbl_phone_number".tr,
                              style: theme.textTheme.titleSmall))),
                  SizedBox(height: 7.v),
                  Padding(
                      padding: EdgeInsets.only(left: 14.h, right: 11.h),
                      child: Selector<RegisterProvider, TextEditingController?>(
                          selector: (context, provider) =>
                              provider.phoneNumberController,
                          builder: (context, phoneNumberController, child) {
                            return CustomTextFormField(
                                controller: phoneNumberController,
                                hintText: "lbl_91_1234567890".tr,
                                textInputAction: TextInputAction.done);
                          })),
                  SizedBox(height: 39.v),
                  CustomOutlinedButton(
                      text: "lbl_register".tr,
                      margin: EdgeInsets.only(left: 14.h, right: 11.h),
                      onPressed: () {
                        onTapRegister(context);
                      }),
                  SizedBox(height: 31.v),
                  CustomElevatedButton(
                      text: "lbl_login".tr,
                      margin: EdgeInsets.only(left: 14.h, right: 11.h),
                      onPressed: () {
                        onTapLogin(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return SizedBox(
        height: 333.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse14,
              height: 333.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 91.h, top: 97.v, right: 94.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMainPageLogo,
                        height: 60.v,
                        width: 175.h),
                    Container(
                        padding: EdgeInsets.only(right: 20.h),
                        decoration: AppDecoration.white,
                        child: Text("lbl_sadhana".tr,
                            style: theme.textTheme.displayMedium))
                  ])))
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
