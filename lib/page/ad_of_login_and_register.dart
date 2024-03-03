import 'package:carousel_slider/carousel_slider.dart';
import 'package:clone_app_amc/extensions/screen_helper.dart';
import 'package:clone_app_amc/page/nav_bar/nav_bar_bloc.dart';
import 'package:flutter/material.dart';

class AdOfLoginAndRegister extends StatelessWidget {
  const AdOfLoginAndRegister({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> carouselItems = [
      Image.asset('assets/image/ad_page/ad_image_1.png', fit: BoxFit.fitHeight),
      Image.asset('assets/image/ad_page/ad_image_2.png', fit: BoxFit.fitHeight),
      Image.asset('assets/image/ad_page/ad_image_3.png', fit: BoxFit.fitHeight),
    ];
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CarouselSlider(
                  items: carouselItems,
                  options: CarouselOptions(
                      disableCenter: false,
                      animateToClosest: false,
                      enableInfiniteScroll: false,
                      height: MediaQuery.of(context).size.height * 0.9,
                      autoPlay: false,
                      aspectRatio: 1,
                      viewportFraction: 1,
                      padEnds: false),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: const MaterialStatePropertyAll(
                              BorderSide(color: Colors.white, width: 2)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: const Text(
                          style: TextStyle(color: Colors.white),
                          "تسجيل الدخول",
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: const Text(
                            "انضم الآن واحصل على مكافات",
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                )
              ]),
          floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
          floatingActionButton: Container(
            margin: const EdgeInsets.only(top: 32),
            child: ElevatedButton(
              onPressed: () {
                context.pushTo(view: const BottomNavigationBarPage());
              },
              style: ButtonStyle(
                side: const MaterialStatePropertyAll(
                    BorderSide(color: Colors.white, width: 2)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: const Text(
                style: TextStyle(color: Colors.white),
                "تخطي",
              ),
            ),
          )),
    );
  }
}
