import 'package:abhishek_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:abhishek_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:abhishek_s_application/widgets/custom_text_form_field.dart';
import 'package:abhishek_s_application/core/utils/validation_functions.dart';
import 'package:abhishek_s_application/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:abhishek_s_application/core/app_export.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              _buildForty(context),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 36.v),
                                  child: Column(children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_phone_number".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 6.v),
                                    Selector<LoginProvider,
                                            TextEditingController?>(
                                        selector: (context, provider) =>
                                            provider.phoneNumberController,
                                        builder: (context,
                                            phoneNumberController, child) {
                                          return CustomTextFormField(
                                              controller: phoneNumberController,
                                              hintText: "lbl_91_1234567890".tr);
                                        }),
                                    SizedBox(height: 18.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("lbl_password".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 6.v),
                                    Consumer<LoginProvider>(
                                        builder: (context, provider, child) {
                                      return CustomTextFormField(
                                          controller:
                                              provider.passwordController,
                                          hintText: "lbl_your_password".tr,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          suffix: InkWell(
                                              onTap: () {
                                                provider
                                                    .changePasswordVisibility();
                                              },
                                              child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      30.h, 11.v, 28.h, 11.v),
                                                  child: CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgEye,
                                                      height: 19.v,
                                                      width: 23.h))),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 46.v),
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "err_msg_please_enter_valid_password"
                                                  .tr;
                                            }
                                            return null;
                                          },
                                          obscureText: provider.isShowPassword,
                                          contentPadding: EdgeInsets.only(
                                              left: 13.h,
                                              top: 15.v,
                                              bottom: 15.v));
                                    }),
                                    SizedBox(height: 9.v),
                                    Text("lbl_forgot_password".tr,
                                        style:
                                            CustomTextStyles.bodySmallPrimary),
                                    SizedBox(height: 19.v),
                                    CustomElevatedButton(
                                        text: "lbl_login".tr,
                                        onPressed: () {
                                          onTapLogin(context);
                                        }),
                                    SizedBox(height: 26.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: Text(
                                                  "msg_not_have_an_account".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallPrimary_1)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text("lbl_register".tr,
                                                  style: CustomTextStyles
                                                      .labelLargePrimary))
                                        ]),
                                    SizedBox(height: 5.v)
                                  ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildForty(BuildContext context) {
    return SizedBox(
        height: 333.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse14,
              height: 333.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 17.v, right: 94.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomAppBar(
                            leadingWidth: double.maxFinite,
                            leading: AppbarLeadingImage(
                                imagePath: ImageConstant.imgVector,
                                margin:
                                    EdgeInsets.fromLTRB(29.h, 6.v, 325.h, 6.v),
                                onTap: () {
                                  onTapVector(context);
                                })),
                        SizedBox(height: 56.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgMainPageLogo,
                            height: 60.v,
                            width: 175.h),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: EdgeInsets.only(right: 20.h),
                                padding: EdgeInsets.only(left: 72.h),
                                decoration: AppDecoration.outlineBlackF,
                                child: Text("lbl_sadhana".tr,
                                    style: theme.textTheme.displayMedium))),
                        SizedBox(height: 38.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl_login".tr,
                                style: theme.textTheme.displaySmall))
                      ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
