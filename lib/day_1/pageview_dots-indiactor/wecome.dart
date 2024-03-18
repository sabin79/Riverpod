import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interntrial/day_1/pageview_dots-indiactor/welcome_notifiler.dart';

class Welcome extends ConsumerStatefulWidget {
  const Welcome({super.key});

  @override
  ConsumerState<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends ConsumerState<Welcome> {
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(welcomeProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 34),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                onPageChanged: (index) {
                  ref.read(welcomeProvider.notifier).pageChanged(index);
                },
                controller: pageController,
                pageSnapping: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/reading.png",
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: const Text(
                          "First See Learning ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: const Text(
                          "Porget about a for aof paper all knowledge is one learnig ! ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
