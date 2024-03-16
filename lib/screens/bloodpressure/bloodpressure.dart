import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:healthwyze/theme/app_decoration.dart';
import 'package:healthwyze/theme/custom_text_style.dart';
import 'package:healthwyze/theme/theme_helper.dart';
import 'package:healthwyze/utils/image_constant.dart';
import 'package:healthwyze/utils/size_utils.dart';
import 'package:healthwyze/widgets/custom_elevated_button.dart';
import 'package:healthwyze/widgets/custom_icon_button.dart';
import 'package:healthwyze/widgets/custom_image_view.dart';

class BloodPressure extends StatelessWidget {
  const BloodPressure({Key? key})
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
              vertical: 33.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 0.v),
                _buildFortyTwo(context),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "Blood Pressure",
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                _buildOneHundredTwentyThree(context),
                SizedBox(height: 18.v),
                CustomElevatedButton(
                  text: "Analyze with our AI",
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 30.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 48.v,
                      width: 51.h,
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
                Container(
                  margin: EdgeInsets.only(
                    left: 60.h,
                    right: 67.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 36.h,
                    vertical: 8.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 13.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "Day",
                          style: CustomTextStyles.headlineSmallBold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "Day",
                          style: CustomTextStyles.headlineSmallBold,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "Hour",
                          style: CustomTextStyles.headlineSmallBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
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
  Widget _buildOneHundredTwentyThree(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 314.v),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillOnErrorContainer,
              child: CustomImageView(
                imagePath: ImageConstant.imgTonometer,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 9.v,
              bottom: 322.v,
            ),
            child: Text(
              "123",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 9.v,
              bottom: 322.v,
            ),
            child: Text(
              "/ 80",
              style: theme.textTheme.headlineSmall,
            ),
          ),
        ],
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
