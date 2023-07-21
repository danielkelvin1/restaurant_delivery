import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_delivery/main.dart';
import 'package:restaurant_delivery/persentation/page/login_page.dart';
import 'package:restaurant_delivery/persentation/widget/button_widget.dart';
import 'package:restaurant_delivery/theme.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});
  static String routeName = '/';

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentIndex = 0;
  List<String> imageCarousel = [
    'assets/all_your_favorite.svg',
    'assets/choose_your_food.svg',
    'assets/free_delivery_rename.svg',
  ];
  List<String> titleCarousel = [
    'All your favorites',
    'Free delivery offers',
    'Choose your food'
  ];
  List<String> subTitleCarousel = [
    'Order from the best local restaurants with easy on-demand delivery.',
    'Free delivery for new customers via Apple Pay and others payment methods.',
    'Easily find your type of food craving and you’ll get delivery in wide range.',
  ];

  Widget _buildCarousel() {
    return ExpandablePageView.builder(
      itemCount: imageCarousel.length,
      itemBuilder: (context, index) => Builder(
        builder: (context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Image(
                  image: SvgImage.asset(imageCarousel[index],
                      width: 300, height: 300),
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  titleCarousel[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'sfProDisplay',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  subTitleCarousel[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          );
        },
      ),
      onPageChanged: (value) {
        setState(() {
          currentIndex = value;
        });
      },
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imageCarousel
          .mapIndexed(
            (element, index) => Container(
              width: 8,
              height: 5,
              margin: const EdgeInsets.only(
                right: 8,
              ),
              decoration: BoxDecoration(
                color: index == currentIndex
                    ? Color(0xff22A45D)
                    : Color(0xff868686),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              _buildCarousel(),
              _buildIndicator(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          bottom: 70,
          left: 20,
          right: 20,
        ),
        child: ButtonWidget(
          buttonText: 'GET STARTED',
          textstyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: activeColor5,
              ),
          buttonCollor: activeColor1,
          onPressed: () {
            context.go(LoginPage.routerName);
          },
        ),
      ),
    );
  }
}
