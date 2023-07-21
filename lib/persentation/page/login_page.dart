import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_delivery/persentation/page/forgot_password_page.dart';
import 'package:restaurant_delivery/persentation/page/register_page.dart';
import 'package:restaurant_delivery/persentation/widget/button_widget.dart';
import 'package:restaurant_delivery/persentation/widget/text_outlined_widget.dart';
import 'package:restaurant_delivery/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String routerName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 24),
          Text(
            'Welcome to',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge,
                    children: [
                      TextSpan(
                          text:
                              "Enter your Phone number or Email for sign in, Or "),
                      TextSpan(
                          text: "Create new account.",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: activeColor1,
                                  ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.go(RegisterPage.routeName);
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
            hintText: "Email Address",
            suffixIcon: Image(
              image: SvgImage.asset(
                'assets/phone.svg',
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          TextOutlinedWidget(
            hintText: "Password",
            obsecureText: hidePassword,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
              child: Image(
                image: SvgImage.asset(
                  hidePassword ? "assets/invisible.svg" : "assets/visible.svg",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => context.push(ForgotPasswordPage.routeName),
            child: Text(
              'Forget Password?',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonWidget(
            textstyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w700,
                color: activeColor5,
                letterSpacing: 0.8),
            buttonCollor: activeColor1,
            buttonText: "SIGN IN",
            onPressed: () {},
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Or',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
          ButtonWidget(
            textstyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: activeColor5,
                  letterSpacing: 0.8,
                ),
            buttonCollor: accentColor3,
            buttonText: "CONNECT WITH FACEBOOK",
            onPressed: () {},
            icons: Image(
              image: SvgImage.asset('assets/facebook.svg'),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ButtonWidget(
            textstyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: activeColor5,
                  letterSpacing: 0.8,
                ),
            buttonCollor: accentColor2,
            buttonText: "CONNECT WITH GOOGLE",
            onPressed: () {},
            icons: Image(
              image: SvgImage.asset('assets/google.svg'),
            ),
          ),
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
