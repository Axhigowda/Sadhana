import 'package:abhishek_s_application/widgets/custom_text_form_field.dart';
import 'models/splash_zero_model.dart';
import 'package:flutter/material.dart';
import 'package:abhishek_s_application/core/app_export.dart';
import 'provider/splash_zero_provider.dart';

class SplashZeroScreen extends StatefulWidget {
  const SplashZeroScreen({Key? key}) : super(key: key);

  @override
  SplashZeroScreenState createState() => SplashZeroScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashZeroProvider(), child: SplashZeroScreen());
  }
}

class SplashZeroScreenState extends State<SplashZeroScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.splashOneScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 830.v),
                  _buildScrollView(context)
                ]))));
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
            child: GestureDetector(
                onTap: () {
                  onTapSplashZero(context);
                },
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 27.h),
                    child: Column(children: [
                      Text("lbl_meet_your_match".tr,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 13.v),
                      Container(
                          width: 282.h,
                          margin: EdgeInsets.only(left: 18.h, right: 3.h),
                          child: Text("msg_lorem_ipsum_dolor".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .bodyMediumSFProOnPrimaryContainer)),
                      SizedBox(height: 40.v),
                      Container(
                          margin: EdgeInsets.only(left: 15.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 9.v),
                          decoration: AppDecoration.outlineOnPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder26),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    height: 33.adaptSize,
                                    width: 33.adaptSize,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.h, vertical: 4.v),
                                    decoration: AppDecoration
                                        .outlineOnPrimaryContainer1
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder16),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgFacebook,
                                        height: 20.v,
                                        width: 9.h,
                                        alignment: Alignment.topCenter)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 13.h, top: 6.v, bottom: 6.v),
                                    child: Text("msg_sign_up_with_facebook".tr,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodyLarge))
                              ])),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Selector<SplashZeroProvider,
                                  TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.gmailController,
                              builder: (context, gmailController, child) {
                                return CustomTextFormField(
                                    controller: gmailController,
                                    hintText: "msg_sign_up_with_google".tr,
                                    textInputAction: TextInputAction.done,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            23.h, 20.v, 22.h, 20.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgGmail,
                                            height: 12.v,
                                            width: 16.h)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 53.v),
                                    contentPadding: EdgeInsets.only(
                                        top: 16.v, right: 15.h, bottom: 16.v));
                              })),
                      SizedBox(height: 21.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_already_have_an2".tr,
                                style: CustomTextStyles.bodyLargeffffffff),
                            TextSpan(
                                text: "lbl_sign_in".tr,
                                style:
                                    CustomTextStyles.titleMediumSFProffffffff)
                          ]),
                          textAlign: TextAlign.center)
                    ])))));
  }

  /// Navigates to the splashOneScreen when the action is triggered.
  onTapSplashZero(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashOneScreen,
    );
  }
}
