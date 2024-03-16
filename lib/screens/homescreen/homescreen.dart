import 'package:healthwyze/theme/app_decoration.dart';
import 'package:healthwyze/theme/theme_helper.dart';
import 'package:healthwyze/utils/image_constant.dart';
import 'package:healthwyze/utils/size_utils.dart';
import 'package:healthwyze/widgets/custom_icon_button.dart';
import 'package:healthwyze/widgets/custom_image_view.dart';

import 'widgets/twenty_item_widget.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.v,
                ),
                _buildThirtySeven(context),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "Monitor",
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                SizedBox(height: 22.v),
                _buildEighteen(context),
                SizedBox(height: 31.v),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text(
                    "Upcoming Appointment",
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 7.v),
                _buildTwenty(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
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
  Widget _buildEighteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10.h),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6.v),
                Container(
                  height: 67.adaptSize,
                  width: 67.adaptSize,
                  margin: EdgeInsets.only(left: 2.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 13.v,
                  ),
                  decoration: AppDecoration.fillOnErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder33,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTonometer,
                    height: 40.v,
                    width: 38.h,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 10.v),
                Text(
                  "Blood Pressure",
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                    children: [
                      Text(
                        "123",
                        style: theme.textTheme.headlineLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          top: 5.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "/ 80",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.h),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6.v),
                Container(
                  height: 67.adaptSize,
                  width: 67.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 13.v,
                  ),
                  decoration: AppDecoration.fillOnErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder33,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHeartWithPulse,
                    height: 40.v,
                    width: 30.h,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Heart Rate",
                    style: theme.textTheme.titleMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      Text(
                        "123",
                        style: theme.textTheme.headlineLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 5.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "/ min",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 21.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return TwentyItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 42.h,
          vertical: 20.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup36,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            CustomImageView(
              imagePath: ImageConstant.imgIconHomeSimple,
              height: 33.v,
              width: 32.h,
            ),
          ],
        ),
      ),
    );
  }
}
