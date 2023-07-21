import 'package:flutter/material.dart';
import 'package:restaurant_delivery/persentation/widget/phone_text_field_widget.dart';
import 'package:restaurant_delivery/theme.dart';

class LoginByPhonePage extends StatefulWidget {
  const LoginByPhonePage({super.key});
  static String routeName = "/login-by-phone";

  @override
  State<LoginByPhonePage> createState() => _LoginByPhonePageState();
}

class _LoginByPhonePageState extends State<LoginByPhonePage> {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text(
        "Login To Foodly",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      centerTitle: true,
      leading: const Padding(
        padding: EdgeInsets.only(left: 24),
        child: Icon(Icons.arrow_back_ios, size: 24),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          'Get started with Foodly',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
                letterSpacing: 0.14,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Text(
            'Enter your phone number to use foodly and enjoy your food :)',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: activeColor3),
          ),
        ),
        const SizedBox(
          height: 34,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: PhoneTextFieldWidget(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}
