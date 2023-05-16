import 'package:ecommerce_application/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_application/constants/app_text.dart';
import 'package:ecommerce_application/pages/register_page.dart';
import 'package:ecommerce_application/widget/custom_elevated_button.dart';
import 'package:ecommerce_application/widget/custom_textfield.dart';
import 'package:kartal/kartal.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

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
            CustomTextField(
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.email_hint,
              labelText: AppText.email,
              suffixIcon: Image.asset('assets/images/email.png'),
            ),
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
            ),
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
}

SizedBox bottomText(BuildContext context) {
  return SizedBox(
    width: context.width * 0.7,
    height: context.height * 0.08,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppText.account,
        ),
        TextButton(
          child: const Text(
            AppText.registernow,
            style: TextStyle(color: AppColors.loginColor),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),
            );
          },
        )
      ],
    ),
  );
}
