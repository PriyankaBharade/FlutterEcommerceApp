import 'package:ecommerce_application/dashboard/home.dart';
import 'package:ecommerce_application/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_application/constants/app_color.dart';
import 'package:ecommerce_application/constants/app_text.dart';
import 'package:ecommerce_application/pages/forgot_password_page.dart';
import 'package:ecommerce_application/pages/register_page.dart';
import 'package:ecommerce_application/widget/custom_elevated_button.dart';
import 'package:ecommerce_application/widget/custom_textfield.dart';
import 'package:kartal/kartal.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            CustomTextField(
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.password_hint,
              labelText: AppText.password,
              suffixIcon: Image.asset('assets/images/lock.png'),
            ),
            midText(context),
            context.emptySizedHeightBoxLow,
            CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
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
            socialIcon(context),
            bottomText(context),
          ],
        ),
      ),
    );
  }

  Text topText(BuildContext context) {
    return const Text(
      AppText.login,
    );
  }

  Text topText1(BuildContext context) {
    return Text(
      AppText.welcome,
      style: context.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Text topText2(BuildContext context) {
    return const Text(
      AppText.welcome_text,
    );
  }

  SizedBox midText(BuildContext context) {
    return SizedBox(
      height: context.height * 0.1,
      width: context.width * 0.85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Switch(
                value: true,
                onChanged: (value) {},
                activeColor: Colors.white,
                activeTrackColor: AppColors.loginColor,
              ),
              const Text(
                AppText.rememberMe,
              ),
            ],
          ),
          TextButton(
            child: const Text(
              AppText.already,
              style: TextStyle(color: AppColors.loginColor),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ForgotPasswordPage()),
              );
            },
          )
        ],
      ),
    );
  }

  SizedBox socialIcon(BuildContext context) {
    return SizedBox(
      height: context.height * 0.1,
      width: context.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: null, icon: Image.asset('assets/images/google.png')),
          IconButton(
              onPressed: null, icon: Image.asset('assets/images/facebook.png')),
          IconButton(
              onPressed: null, icon: Image.asset('assets/images/twitter.png')),
        ],
      ),
    );
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
}
