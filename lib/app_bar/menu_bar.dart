import 'package:get/get.dart';
import 'package:modulberapa/CRUD/screens/tampil.dart';
import 'package:modulberapa/dashboard.dart';
import 'package:flutter/material.dart';

import '../LoginPage/profile.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2).copyWith(bottom: 0),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.menu,
                    size: 45,
                    color: Colors.purple[150],
                  ),
                  onPressed: () {},
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14, left: 8),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/svg/codashop.svg",
                              height: 30,
                              width: 150,
                            )
                            // Text("logo codashop")
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: new Icon(
                    Icons.search,
                    size: 45,
                    color: Colors.purple[150],
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: new Icon(
                    Icons.account_circle_rounded,
                    size: 45,
                    color: Colors.purple[150],
                  ),
                  onPressed: () {
                    // yang lama
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (BuildContext context) => ProfileData()));
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => TampilCrud()));
                  },
                )
              ],
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
