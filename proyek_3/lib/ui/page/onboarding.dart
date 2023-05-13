import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proyek_3/shared/theme.dart';
import 'package:proyek_3/ui/widgets/buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentindex = 0; 
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Kesehatan Anda Terjamin',
    'Jadwal Yang Akurat',
    'Checkup Tepat Waktu',
  ];

  List<String> subtitles = [
    'Kami membantu keluhan anda ketika akan meminum obat dan melakukan pelayanan yang sangat terjamin untuk anda',
    'Sistem monitoring waktu meminum obat yang sangat akurat dan terjamin',
    'Mendapatkan Jadwal Checkup yang rutin',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'img/1.jpg',
                  height: 331,
                ),
                Image.asset(
                  'img/2.jpg',
                  height: 331,
                ),
                Image.asset(
                  'img/3.jpg',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentindex = index;
                  });
                },
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentindex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[currentindex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentindex == 2 ? 38 : 50,
                  ),
                  currentindex == 2
                      ? Column(
                          children: [
                            CustomFilledButton(
                              title: 'Sign in',
                              onPressed: () {
																Navigator.pushNamed(context, '/signin');
															},
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentindex == 0
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentindex == 1
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentindex == 2
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            const Spacer(),
                            CustomFilledButton(
                              width: 150,
                              title: 'Continue',
                              onPressed: () {
                                carouselController.nextPage();
                              },
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
