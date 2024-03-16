import 'package:flutter/material.dart';
import 'package:healthwyze/theme/app_decoration.dart';
import 'package:healthwyze/theme/custom_text_style.dart';
import 'package:healthwyze/utils/image_constant.dart';
import 'package:healthwyze/utils/size_utils.dart';
import 'package:healthwyze/widgets/custom_image_view.dart';
import 'package:healthwyze/widgets/custom_outlined_button.dart';

import '../../theme/theme_helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 28.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 31.adaptSize,
                                width: 31.adaptSize,
                                margin: EdgeInsets.only(top: 1.v),
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 120.h),
                                child: Text("Profile",
                                    style:
                                        CustomTextStyles.headlineMediumMedium))
                          ]))),
                  SizedBox(height: 27.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse6,
                      height: 93.adaptSize,
                      width: 93.adaptSize,
                      radius: BorderRadius.circular(46.h)),
                  SizedBox(height: 6.v),
                  Text("Victoria Robertson",
                      style: CustomTextStyles.displayMediumSecondaryContainer),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 55.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgIcons8Edit641,
                                    height: 29.adaptSize,
                                    width: 29.adaptSize,
                                    margin: EdgeInsets.only(
                                        top: 6.v, bottom: 14.v)),
                                CustomOutlinedButton(
                                    width: 208.h,
                                    text: "Edit Profile",
                                    margin: EdgeInsets.only(left: 7.h))
                              ]))),
                  SizedBox(height: 64.v),
                  _buildTwo(context, gender: "Age", female: "18"),
                  SizedBox(height: 3.v),
                  _buildTwo(context, gender: "Gender", female: "Female"),
                  SizedBox(height: 3.v),
                  _buildTwo(context, gender: "height", female: "178 cm"),
                  SizedBox(height: 4.v),
                  _buildTwo(context, gender: "Weight", female: "70 kg"),
                  SizedBox(height: 4.v),
                  _buildTwo(context, gender: "Public Address", female: "XXXX"),
                  SizedBox(height: 4.v),
                  _buildTwo(context, gender: "Blood group", female: "B+ve"),
                  SizedBox(height: 40.v),
                  CustomOutlinedButton(
                      width: 239.h,
                      text: "Delete Account",
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 2.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgThumbsup,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      buttonTextStyle:
                          CustomTextStyles.titleLargePoppinsErrorContainer),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Common widget
  Widget _buildTwo(
    BuildContext context, {
    required String gender,
    required String female,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 12.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, bottom: 4.v),
              child: Text(gender,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.black900))),
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text(female,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.black900)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
