import 'package:modulberapa/list_entertainment/cocofun.dart';
import 'package:modulberapa/list_entertainment/gogo.dart';
import 'package:modulberapa/list_entertainment/likee.dart';
import 'package:modulberapa/list_entertainment/nimo.dart';
import 'package:modulberapa/list_entertainment/tinder.dart';
import 'package:modulberapa/list_entertainment/turbo.dart';
import 'package:flutter/material.dart';

import '../list/gensin.dart';
import '../list/list_ML.dart';
import '../list/listff.dart';
import '../list/listmax.dart';
import '../list/rift.dart';
import '../list/valo.dart';

class Entertainment extends StatelessWidget {
  const Entertainment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("TOP UP ENTERTAINMENT LANGSUNG",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
            // items
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // color: Colors.purple.shade100,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [ListNimo(), ListTinder(), ListLike()],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 500,
              height: 200,
              // color: Colors.red,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [ListCocofun(), ListGogo(), ListTurbo()],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 115, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Tampilkan Semua",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow.shade300),
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
