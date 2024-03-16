import 'package:flutter/material.dart';
import 'package:healthwyze/theme/app_decoration.dart';
import 'package:healthwyze/theme/custom_button_style.dart';
import 'package:healthwyze/theme/custom_text_style.dart';
import 'package:healthwyze/theme/theme_helper.dart';
import 'package:healthwyze/utils/image_constant.dart';
import 'package:healthwyze/utils/size_utils.dart';
import 'package:healthwyze/widgets/custom_elevated_button.dart';
import 'package:healthwyze/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class TwentyItemWidget extends StatelessWidget {
  const TwentyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillAmber.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              right: 10.h,
            ),
            child: Row(
              children: [
                Container(
                  height: 67.v,
                  width: 66.h,
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder33,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUnsplash3tll97hnjo67x66,
                    height: 67.v,
                    width: 66.h,
                    radius: BorderRadius.circular(
                      30.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Emily Williams",
                        style: theme.textTheme.headlineSmall,
                      ),
                      Text(
                        "Neurologist",
                        style: CustomTextStyles.bodyLarge16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            text: "Thu, May 18, 9:00 - 10:00 AM",
            margin: EdgeInsets.only(right: 22.h),
            buttonStyle: CustomButtonStyles.fillOnSecondaryContainer,
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
