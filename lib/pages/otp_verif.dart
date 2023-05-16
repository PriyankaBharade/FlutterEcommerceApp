import 'package:flutter/material.dart';
import 'package:ecommerce_application/constants/app_color.dart';
import 'package:ecommerce_application/constants/app_text.dart';
import 'package:ecommerce_application/pages/login_page.dart';
import 'package:ecommerce_application/pages/register_page.dart';
import 'package:ecommerce_application/widget/custom_elevated_button.dart';
import 'package:ecommerce_application/widget/custom_textfield.dart';
import 'package:kartal/kartal.dart';

//import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
      height: context.height * 1,
      width: context.width * 1,
      child: SingleChildScrollView(
        child: Column(
          children: [
            context.emptySizedHeightBoxLow3x,
            context.emptySizedHeightBoxLow3x,
            topText(context),
            topText1(context),
            topText2(context),
            context.emptySizedHeightBoxLow3x,
            /* OtpTextField(
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),*/
            context.emptySizedHeightBoxLow,
            CustomElevatedButton(
                borderRadius: 20,
                color: AppColors.loginColor,
                height: context.height * 0.07,
                width: context.width * 0.6,
                child: const Text(
                  AppText.conti,
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                }),
            context.emptySizedHeightBoxLow,
            bottomText(context),
          ],
        ),
      ),
    );
  }

  Text topText(BuildContext context) {
    return const Text(
      AppText.forgot_password,
    );
  }

  Text topText1(BuildContext context) {
    return Text(
      AppText.forgot_password,
      style: context.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Text topText2(BuildContext context) {
    return const Text(
      AppText.forgot_password_text,
    );
  }

  Container bottomText(BuildContext context) {
    return Container(
      width: context.width * 0.7,
      height: context.height * 0.08,
      child: const Text(
        AppText.otp_resend_text,
      ),
    );
  }
}
