import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  PageController controller = PageController();
  int count = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .45,
            child: PageView.builder(
              controller: controller,
              itemCount: count,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                            'assets/images/background_pattern_image.png'),
                        Image.asset('assets/images/welcome_image.png'),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'آگهی شماست',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'shabnam'),
                        ),
                        Image.asset('assets/images/logo_image.png'),
                        Text(
                          'اینجا محل',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'shabnam'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      child: Text(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'shabnam',
                            fontWeight: FontWeight.w400,
                          ),
                          '''در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید'''),
                    ),
                  ],
                );
              },
            ),
          ),
          Spacer(),
          // buttons
          SmoothPageIndicator(
             
              controller: controller, // PageController
              count: count,
              effect: ExpandingDotsEffect(
                activeDotColor: Color(0xffE60023),
                dotColor: Color(0xffEAECF0),
                dotHeight: 6,
                dotWidth: 6,
                
              ), // your preferred effect
              onDotClicked: (index) {}),

          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 22,
              right: 16,
              left: 16,
            ),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 40,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffE60023)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    onPressed: () {},
                    child: Text(
                      'ورود',
                      style: TextStyle(
                        color: Color(
                          0xffE60023,
                        ),
                        fontSize: 16,
                        fontFamily: 'shabnam',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Expanded(
                  child: MaterialButton(
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    onPressed: () {},
                    color: Color(0xffE60023),
                    child: Text(
                      'ثبت نام',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'shabnam',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
