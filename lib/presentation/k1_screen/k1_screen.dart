import 'package:flutter/material.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'widgets/column_item_widget.dart';

class K1Screen extends StatelessWidget {
  const K1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 35.h,
            top: 63.v,
            right: 35.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 80.v,
                width: 157.h,
              ),
              SizedBox(height: 38.v),
              Text(
                "Подтвердите код быстрого доступа",
                style: CustomTextStyles.titleMedium16,
              ),
              SizedBox(height: 29.v),
              CustomPinCodeTextField(
                context: context,
                onChanged: (value) {},
              ),
              SizedBox(height: 30.v),
              _buildColumn(context),
              SizedBox(height: 16.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    height: 72.v,
                    width: 72.h,
                    text: "0",
                    buttonStyle: CustomButtonStyles.outlineGrayF,
                    buttonTextStyle: theme.textTheme.headlineSmall!,
                  ),
                  Container(
                    height: 72.adaptSize,
                    width: 72.adaptSize,
                    margin: EdgeInsets.only(left: 20.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 34.v,
                    ),
                    decoration: AppDecoration.style.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrow2,
                      height: 1.v,
                      width: 18.h,
                      alignment: Alignment.bottomRight,
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 73.v,
          crossAxisCount: 3,
          mainAxisSpacing: 21.h,
          crossAxisSpacing: 21.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 9,
        itemBuilder: (context, index) {
          return ColumnItemWidget();
        },
      ),
    );
  }
}
