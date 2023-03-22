import 'package:flutter/material.dart';
import 'package:onboarding_views/common_widgets/dots_indicator.dart';
import 'package:onboarding_views/utils/constans.dart';

class CapybaraOnboarding extends StatefulWidget {
  const CapybaraOnboarding({Key? key}) : super(key: key);

  @override
  _CapybaraOnboardingState createState() => _CapybaraOnboardingState();
}

class _CapybaraOnboardingState extends State<CapybaraOnboarding> {
  // Change page
  int page = 1;
  List<String> titles = ["Custom-coded", "Mobile-optimized", "Stunning design"];
  List<String> subtitles = [
    "Eiusmod non exercitation nisi mollit id id cupidatat amet elit dolore anim dolor.",
    "Est amet exercitation dolore proident dolor nostrud.",
    "Culpa Lorem minim nulla cupidatat officia ullamco tempor."
  ];
  List<Color> colors = [pageGreen, pageYellow, pagePurple];
  List<String> images = [
    "assets/images/cap1.png",
    "assets/images/cap2.png",
    "assets/images/cap3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                //color: pageGreen,
                decoration: BoxDecoration(
                    color: colors[page - 1],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(125.0),
                        bottomRight: Radius.circular(125.0))),
              ),
              SafeArea(
                  child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  images[page - 1],
                  height: 140.0 * 2,
                ),
              ))
            ],
          ),
          separator20V,
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Text(
                  titles[page - 1],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                separator20V,
                Text(
                  subtitles[page - 1],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
          Spacer(),
          SafeArea(
              child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    DotsIndicator(
                        size: page == 1 ? 10.0 : 5.0,
                        color: page == 1 ? colors[page - 1] : Colors.grey),
                    separator10H,
                    DotsIndicator(
                        size: page == 2 ? 10.0 : 5.0,
                        color: page == 2 ? colors[page - 1] : Colors.grey),
                    separator10H,
                    DotsIndicator(
                        size: page == 3 ? 10.0 : 5.0,
                        color: page == 3 ? colors[page - 1] : Colors.grey),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 56.0 * 1.3,
                      height: 56.0 * 1.3,
                      child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(colors[page - 1]),
                          strokeWidth: 2.0,
                          value: (1.0 / 3) * page,
                          backgroundColor: Colors.grey),
                    ),
                    FilledButton(
                        onPressed: () {
                          setState(() {
                            if (page <= 2) {
                              page += 1;
                            } else {
                              page = 1;
                            }
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(colors[page - 1]),
                            minimumSize: MaterialStateProperty.all(
                                const Size(56.0, 56.0))),
                        child: const Icon(Icons.chevron_right))
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
