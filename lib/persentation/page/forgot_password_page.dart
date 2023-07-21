import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_delivery/persentation/widget/button_widget.dart';
import 'package:restaurant_delivery/theme.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});
  static String routeName = "/forgot-password";

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool showWidgetResetSendEmail = false;

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Forgot Password',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: InkWell(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () => context.pop(),
        ),
      ),
    );
  }

  Widget _buildForgotPassword(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Forgot password',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                'Enter your email address and we will send you a reset instructions.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: activeColor3),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "EMAIL ADDRESS",
              // labelStyle: TextStyle(color: Colors.red),
              floatingLabelStyle:
                  Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: activeColor3,
                        letterSpacing: 0.8,
                      ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: activeColor3),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ButtonWidget(
            textstyle: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: activeColor4, letterSpacing: 0.8),
            buttonCollor: activeColor1,
            buttonText: "RESET PASSWORD",
            onPressed: () {
              setState(() {
                showWidgetResetSendEmail = !showWidgetResetSendEmail;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildResetSendEmail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Reset email sent',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: activeColor3),
              children: [
                const TextSpan(
                    text:
                        'We have sent a instructions email to Nawfazim@icloud.com.'),
                TextSpan(
                    text: 'Having problem?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: activeColor1)),
              ],
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          ButtonWidget(
            textstyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: activeColor4,
                  letterSpacing: 0.8,
                ),
            buttonCollor: activeColor1,
            buttonText: 'SEND AGAIN',
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: showWidgetResetSendEmail
          ? _buildResetSendEmail(context)
          : _buildForgotPassword(context),
    );
  }
}
