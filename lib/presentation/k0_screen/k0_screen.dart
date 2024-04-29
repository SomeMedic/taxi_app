import 'package:flutter/material.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class K0Screen extends StatelessWidget {
  K0Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController sevenController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
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
                  SizedBox(height: 39.v),
                  Text(
                    "Авторизация",
                    style: CustomTextStyles.titleMedium18,
                  ),
                  SizedBox(height: 39.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 39.h),
                      child: Text(
                        "Телефон",
                        style: CustomTextStyles.titleSmallGray600_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCall,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          _buildSeven(context)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Opacity(
                    opacity: 0.2,
                    child: Divider(),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 1.v,
                      width: 22.h,
                      decoration: BoxDecoration(
                        color: appTheme.amber500,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.primary.withOpacity(0.05),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              4,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32.v),
                  _buildPasswordone(context),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 66.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Забыли пароль?",
                            style: CustomTextStyles.labelLarge13.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text(
                              "Сменить пароль",
                              style: CustomTextStyles.labelLarge13.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40.v),
                  _buildTf(context),
                  SizedBox(height: 15.v),
                  _buildTf1(context),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: CustomTextFormField(
        controller: sevenController,
        hintText: "+7 (___) ___-__-__",
        hintStyle: CustomTextStyles.titleSmallGray600_1,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordone(BuildContext context) {
    return CustomTextFormField(
      controller: passwordoneController,
      hintText: "Пароль",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(5.h, 1.v, 20.h, 1.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgBag,
          height: 16.v,
          width: 13.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 31.v,
      ),
      suffix: Container(
        margin: EdgeInsets.only(
          left: 30.h,
          top: 1.v,
          bottom: 1.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 15.v,
          width: 20.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 31.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
      text: "Войти",
      margin: EdgeInsets.symmetric(horizontal: 25.h),
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomElevatedButton(
      text: "Зарегистрироваться",
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      buttonStyle: CustomButtonStyles.fillAmber,
      buttonTextStyle: CustomTextStyles.titleSmallSemiBold_1,
    );
  }
}
