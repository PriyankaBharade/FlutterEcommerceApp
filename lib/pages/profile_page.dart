import 'package:flutter/material.dart';
import 'package:ecommerce_application/pages/otp_verif.dart';
import 'package:kartal/kartal.dart';
import 'package:ecommerce_application/constants/app_color.dart';
import 'package:ecommerce_application/constants/app_text.dart';
import 'package:ecommerce_application/widget/custom_elevated_button.dart';
import 'package:ecommerce_application/widget/custom_textfield.dart';
import 'package:ecommerce_application/pages/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
            topText(context),
            context.emptySizedHeightBoxLow3x,
            context.emptySizedHeightBoxLow,
            topText1(context),
            topText2(context),
            CustomTextField(
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.firstName_hint,
              labelText: AppText.firstName,
            ),
            context.emptySizedHeightBoxLow,
            CustomTextField(
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.lastName_hint,
              labelText: AppText.lastName,
            ),
            context.emptySizedHeightBoxLow,
            CustomTextField(
              height: context.height * 0.07,
              width: context.width * 0.8,
              labelText: AppText.phonenumber,
              hinttext: AppText.phonenumber_hint,
            ),
            context.emptySizedHeightBoxLow,
            CustomTextField(
              height: context.height * 0.07,
              width: context.width * 0.8,
              labelText: AppText.address,
              hinttext: AppText.address_hint,
            ),
            context.emptySizedHeightBoxLow3x,
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
                    MaterialPageRoute(builder: (context) => const OtpPage()),
                  );
                }),
            context.emptySizedHeightBoxLow,
            //socialIcon(context),
            context.emptySizedHeightBoxLow3x,
            bottomText(context),
          ],
        ),
      ),
    );
  }

  Text topText1(BuildContext context) {
    return Text(
      AppText.profile,
      style: context.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Text topText2(BuildContext context) {
    return const Text(
      AppText.register_text,
      textDirection: TextDirection.ltr,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  SizedBox topImage(BuildContext context) {
    return SizedBox(
      height: context.height * 0.2,
      child: Image.asset('asset/images/satti.jpg'),
    );
  }

  Text topText(BuildContext context) {
    return const Text(
      AppText.signUp,
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

  Container bottomText(BuildContext context) {
    return Container(
      width: context.width * 1,
      height: context.height * 0.08,
      child: const Text(
        AppText.terms_condi,
        textDirection: TextDirection.ltr,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
