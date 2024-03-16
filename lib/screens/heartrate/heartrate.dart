import 'package:flutter/material.dart';
import 'package:healthwyze/theme/app_decoration.dart';
import 'package:healthwyze/theme/theme_helper.dart';
import 'package:healthwyze/utils/image_constant.dart';
import 'package:healthwyze/utils/size_utils.dart';
import 'package:healthwyze/widgets/custom_elevated_button.dart';
import 'package:healthwyze/widgets/custom_icon_button.dart';
import 'package:healthwyze/widgets/custom_image_view.dart';

class HeartRate extends StatefulWidget {
  const HeartRate({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxSevenTabContainerPageState createState() =>
      Iphone1415ProMaxSevenTabContainerPageState();
}

class Iphone1415ProMaxSevenTabContainerPageState extends State<HeartRate>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 80.v),
              _buildThirtyTwo(context),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Heart Rate",
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              _buildHeartWithPulse(context),
              SizedBox(height: 15.v),
              CustomElevatedButton(
                text: "Analyze with our AI",
                margin: EdgeInsets.symmetric(horizontal: 19.h),
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 30.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 48.v,
                    width: 51.h,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              Container(
                height: 53.v,
                width: 265.h,
                margin: EdgeInsets.only(left: 75.h),
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.black900,
                  labelStyle: TextStyle(
                    fontSize: 24.fSize,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelColor: appTheme.black900,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 24.fSize,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  indicator: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Day",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Hour",
                      ),
                    ),
                  ],
                ),
              ),
              _buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 67.adaptSize,
            width: 67.adaptSize,
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder33,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgUnsplash3tll97hnjo,
              height: 67.v,
              width: 66.h,
              radius: BorderRadius.circular(
                33.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 21.v,
              bottom: 18.v,
            ),
            child: Text(
              "Hello, Jacob!",
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 67.adaptSize,
            width: 67.adaptSize,
            padding: EdgeInsets.all(11.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup264,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeartWithPulse(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 50.adaptSize,
            width: 50.adaptSize,
            margin: EdgeInsets.only(bottom: 316.v),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder25,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgHeartWithPulse,
              height: 40.v,
              width: 30.h,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 8.v,
              bottom: 325.v,
            ),
            child: Text(
              "123",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 8.v,
              bottom: 325.v,
            ),
            child: Text(
              "/ min",
              style: theme.textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 22.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          Container(),
          Container(),
        ],
      ),
    );
  }
}
