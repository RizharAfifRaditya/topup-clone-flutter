import 'package:flutter/material.dart';

class Newspromo extends StatelessWidget {
  const Newspromo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("NEWS AND PROMOTIONS",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
              height: 170,
              width: 400,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  ClipRRect(
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      color: Colors.white,
                      child: Image.asset(
                        "assets/images/comuniti.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Komunitas CodaClub",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                    child: Row(
                      children: [
                        Text(
                          "Bergabunglah dengan Komunitas!",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
              height: 170,
              width: 400,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  ClipRRect(
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      color: Colors.white,
                      child: Image.asset(
                        "assets/images/penipuan.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Waspada Penipuan APK!",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                    child: Row(
                      children: [
                        Text(
                          "Pengumuman Penting dari Codashop",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
