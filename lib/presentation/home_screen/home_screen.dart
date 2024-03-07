import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:abhishek_s_application/widgets/custom_drop_down.dart';
import 'models/home_model.dart';
import 'package:abhishek_s_application/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:abhishek_s_application/core/app_export.dart';
import 'provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(), child: HomeScreen());
  }
}

class HomeScreenState extends State<HomeScreen> {
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
                child: Column(children: [
                  _buildEleven(context),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 42.h, right: 72.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text("lbl_anga".tr,
                                        style: CustomTextStyles
                                            .bodyMediumPrimary)),
                                Text("lbl_points".tr,
                                    style: CustomTextStyles.bodyMediumPrimary)
                              ]))),
                  SizedBox(height: 30.v),
                  _buildTwenty(context),
                  SizedBox(height: 15.v),
                  _buildThirty(context),
                  SizedBox(height: 15.v),
                  _buildNineteen(context),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.only(left: 42.h, right: 31.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text("lbl_seva".tr,
                                    style: theme.textTheme.bodyMedium)),
                            Selector<HomeProvider, HomeModel?>(
                                selector: (context, provider) =>
                                    provider.homeModelObj,
                                builder: (context, homeModelObj, child) {
                                  return CustomDropDown(
                                      width: 120.h,
                                      hintText: "lbl_0".tr,
                                      items:
                                          homeModelObj?.dropdownItemList3 ?? [],
                                      onChanged: (value) {
                                        context
                                            .read<HomeProvider>()
                                            .onSelected3(value);
                                      });
                                })
                          ])),
                  SizedBox(height: 15.v),
                  _buildEighteen(context),
                  SizedBox(height: 63.v),
                  CustomElevatedButton(
                      height: 33.v,
                      width: 131.h,
                      text: "lbl_submit".tr,
                      buttonTextStyle: theme.textTheme.labelLarge!),
                  SizedBox(height: 27.v),
                  CustomElevatedButton(
                      height: 33.v,
                      width: 131.h,
                      text: "lbl_logout".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 3.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup,
                              height: 23.adaptSize,
                              width: 23.adaptSize)),
                      buttonTextStyle: theme.textTheme.labelLarge!,
                      onPressed: () {
                        onTapLogout(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return SizedBox(
        height: 333.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse141,
              height: 333.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child:
                  Consumer<HomeProvider>(builder: (context, provider, child) {
                return Container(
                    height: 280.v,
                    width: 336.h,
                    margin: EdgeInsets.only(top: 5.v),
                    child: CalendarDatePicker2(
                        config: CalendarDatePicker2Config(
                            calendarType: CalendarDatePicker2Type.single,
                            firstDate: DateTime(DateTime.now().year - 5),
                            lastDate: DateTime(DateTime.now().year + 5),
                            selectedDayHighlightColor: Color(0XFFFFF0F0),
                            firstDayOfWeek: 1,
                            weekdayLabelTextStyle: TextStyle(
                                color: theme.colorScheme.secondaryContainer,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                            todayTextStyle: TextStyle(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                            selectedDayTextStyle: TextStyle(
                                color: Color(0XFFFFA500),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                            dayTextStyle: TextStyle(
                                color: theme.colorScheme.onSecondaryContainer
                                    .withOpacity(1),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                            disabledDayTextStyle: TextStyle(
                                color: theme.colorScheme.onSecondaryContainer,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                            weekdayLabels: [
                              "Su",
                              "Mo",
                              "Tu",
                              "Wed",
                              "Th",
                              "Fr",
                              "Sa"
                            ],
                            dayBorderRadius: BorderRadius.circular(8.h)),
                        value: provider.selectedDatesFromCalendar1 ?? [],
                        onValueChanged: (dates) {
                          provider.selectedDatesFromCalendar1 = dates;
                        }));
              }))
        ]));
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 19.h, right: 31.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text("lbl_mangalarati".tr,
                          style: theme.textTheme.bodyMedium)),
                  Selector<HomeProvider, HomeModel?>(
                      selector: (context, provider) => provider.homeModelObj,
                      builder: (context, homeModelObj, child) {
                        return CustomDropDown(
                            width: 120.h,
                            hintText: "lbl_0".tr,
                            items: homeModelObj?.dropdownItemList ?? [],
                            onChanged: (value) {
                              context.read<HomeProvider>().onSelected(value);
                            });
                      })
                ])));
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child:
                  Text("lbl_chanting".tr, style: theme.textTheme.bodyMedium)),
          Selector<HomeProvider, HomeModel?>(
              selector: (context, provider) => provider.homeModelObj,
              builder: (context, homeModelObj, child) {
                return CustomDropDown(
                    width: 120.h,
                    hintText: "lbl_0".tr,
                    items: homeModelObj?.dropdownItemList1 ?? [],
                    onChanged: (value) {
                      context.read<HomeProvider>().onSelected1(value);
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h, right: 31.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text("lbl_bhagavatam".tr,
                          style: theme.textTheme.bodyMedium)),
                  Selector<HomeProvider, HomeModel?>(
                      selector: (context, provider) => provider.homeModelObj,
                      builder: (context, homeModelObj, child) {
                        return CustomDropDown(
                            width: 120.h,
                            hintText: "lbl_0".tr,
                            items: homeModelObj?.dropdownItemList2 ?? [],
                            onChanged: (value) {
                              context.read<HomeProvider>().onSelected2(value);
                            });
                      })
                ])));
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("lbl_reading".tr, style: theme.textTheme.bodyMedium)),
          Selector<HomeProvider, HomeModel?>(
              selector: (context, provider) => provider.homeModelObj,
              builder: (context, homeModelObj, child) {
                return CustomDropDown(
                    width: 120.h,
                    hintText: "lbl_0".tr,
                    items: homeModelObj?.dropdownItemList4 ?? [],
                    onChanged: (value) {
                      context.read<HomeProvider>().onSelected4(value);
                    });
              })
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
