import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_delivery/persentation/page/login_by_phone_page.dart';
import 'package:restaurant_delivery/persentation/page/login_page.dart';
import 'package:restaurant_delivery/persentation/widget/button_widget.dart';
import 'package:restaurant_delivery/persentation/widget/text_outlined_widget.dart';
import 'package:restaurant_delivery/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static String routeName = "/register";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hidePassword = true;

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(
            height: 24,
          ),
          Text(
            'Create Account',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(letterSpacing: 0.22),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: activeColor3),
                    children: [
                      const TextSpan(
                          text:
                              'Enter your Name, Email and Password for sign up.'),
                      TextSpan(
                          text: 'Already have account?',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: activeColor1),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.go(LoginPage.routerName);
                            }),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          TextOutlinedWidget(
            hintText: 'Full Name',
          ),
          const SizedBox(
            height: 14,
          ),
          TextOutlinedWidget(
            hintText: 'Email Address',
          ),
          const SizedBox(
            height: 14,
          ),
          TextOutlinedWidget(
            hintText: 'Password',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
              child: Image(
                image: SvgImage.asset(hidePassword
                    ? 'assets/invisible.svg'
                    : 'assets/visible.svg'),
              ),
            ),
            obsecureText: hidePassword,
          ),
          const SizedBox(
            height: 24,
          ),
          ButtonWidget(
            textstyle: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: activeColor4),
            buttonCollor: activeColor1,
            buttonText: "SIGN UP",
            onPressed: () {
              context.push(LoginByPhonePage.routeName);
            },
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'By Signing up you agree to our Terms Conditions & Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: activeColor3),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Or',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: activeColor3),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
          ButtonWidget(
            textstyle: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(letterSpacing: 0.8, color: activeColor4),
            buttonCollor: accentColor3,
            buttonText: "CONNECT WITH FACEBOOK",
            icons: Image(image: SvgImage.asset('assets/facebook.svg')),
            onPressed: () {},
          ),
          const SizedBox(
            height: 16,
          ),
          ButtonWidget(
            textstyle: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(letterSpacing: 0.8, color: activeColor4),
            buttonCollor: accentColor2,
            icons: Image(image: SvgImage.asset('assets/google.svg')),
            buttonText: "CONNECT WITH GOOGLE",
            onPressed: () {},
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
}
