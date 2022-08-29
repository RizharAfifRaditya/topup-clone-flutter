import 'package:modulberapa/app_bar/menu_bar.dart';
import 'package:modulberapa/populer.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'assets/images/linkaja.jpeg',
    'assets/images/pubg.jpeg',
    'assets/images/ff.jpeg',
    'assets/images/bonus.jpeg',
    'assets/images/cashback.jpeg',
    'assets/images/gopay.jpeg',
    'assets/images/iris.jpeg',
    'assets/images/maret.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Color.fromARGB(255, 45, 0, 53),
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 60,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      child: CarouselSlider(
                        items: imgList
                            .map((item) => Container(
                                  height: 1000,
                                  width: 500,
                                  child: Container(
                                    // margin: EdgeInsets.all(10.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0)),
                                        child: Stack(
                                          children: <Widget>[
                                            Image.asset(
                                              item,
                                              // fit: BoxFit.cover,
                                              width: 1000000.0,
                                              height: 600000.0,
                                            ),
                                            Positioned(
                                              bottom: 7.0,
                                              left: 0.0,
                                              right: 7.0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color.fromARGB(
                                                          500, 0, 0, 0),
                                                      Color.fromARGB(
                                                          30, 0, 0, 0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    // end: Alignment.topCenter,
                                                  ),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.0),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                ))
                            .toList(),
                        carouselController: _controller,
                        options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 2.9,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            }),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                  MenuPopuler(),
                ],
              ),
            ),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
