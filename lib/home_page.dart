import 'package:demo_app/log_in_screen/login_page.dart';
import 'package:demo_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/images/img.png',
                  width: 400,
                  height: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "ยินดีต้อนรับสู่",
                style: primaryTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "DEMO",
                style: primaryTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                style: secondaryTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            SmoothPageIndicator(
                controller: controller, // PageController
                count: 4,
                effect: const WormEffect(
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Colors.green,
                ), // your preferred effect
                onDotClicked: (index) {}),
            const Spacer(
              flex: 1,
            ),
            Container(
              alignment: Alignment.topCenter,
              width: double.maxFinite,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFEDEDED),
                    blurRadius: 4,
                    offset: Offset(0, -4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 170.0,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: flatButtonStyle,
                            child: Text(
                              'เข้าสู่ระบบ',
                              style: flatButtonTextStyle,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 170.0,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            ),
                            style: elevatedButtonStyle,
                            child: Text(
                              'สมัครสมาชิก',
                              style: elevatedButtonTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'พบปัญหาติดต่อ',
                            ),
                            TextSpan(
                              text: 'ศูนย์ช่วยเหลือ',
                              style: spanTextStyle,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
