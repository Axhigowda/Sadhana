import 'package:abhishek_s_application/widgets/custom_text_form_field.dart';
import 'models/splash_one_model.dart';
import 'package:flutter/material.dart';
import 'package:abhishek_s_application/core/app_export.dart';
import 'provider/splash_one_provider.dart';

class SplashOneScreen extends StatefulWidget {
  const SplashOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashOneScreenState createState() => SplashOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashOneProvider(),
      child: SplashOneScreen(),
    );
  }
}

class SplashOneScreenState extends State<SplashOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 310.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 27.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMainPageLogo,
                          height: 60.v,
                          width: 175.h,
                        ),
                        SizedBox(height: 6.v),
                        Container(
                          padding: EdgeInsets.only(right: 18.h),
                          decoration: AppDecoration.white,
                          child: Text(
                            "lbl_sadhana".tr,
                            style: theme.textTheme.displayMedium,
                          ),
                        ),
                        SizedBox(height: 413.v),
                        _buildLoginExperience(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginExperience(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: Column(
        children: [
          Text(
            "lbl_lorem_ipsum".tr,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(height: 13.v),
          Container(
            width: 282.h,
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            child: Text(
              "msg_excepteur_sint_occaecat".tr,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumSFProOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 31.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlineOnPrimaryContainer2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder26,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 33.adaptSize,
                  width: 33.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlineOnPrimaryContainer3.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook,
                    height: 20.v,
                    width: 9.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "msg_sign_up_with_facebook".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Selector<SplashOneProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.buttonsController,
            builder: (context, buttonsController, child) {
              return CustomTextFormField(
                controller: buttonsController,
                hintText: "msg_sign_up_with_google".tr,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(23.h, 20.v, 22.h, 20.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGmail,
                    height: 12.v,
                    width: 16.h,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 53.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 16.v,
                  right: 15.h,
                  bottom: 16.v,
                ),
              );
            },
          ),
          SizedBox(height: 31.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_already_have_an2".tr,
                  style: CustomTextStyles.bodyLargeffffffff,
                ),
                TextSpan(
                  text: "lbl_sign_in".tr,
                  style: CustomTextStyles.titleMediumSFProffffffff,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
