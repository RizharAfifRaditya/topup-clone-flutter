import 'package:modulberapa/list/listff.dart';
import 'package:modulberapa/list/valo.dart';
import 'package:modulberapa/list_new/2k22.dart';
import 'package:modulberapa/list_new/front.dart';
import 'package:modulberapa/list_new/listcity.dart';
import 'package:modulberapa/list_new/listsus.dart';
import 'package:modulberapa/list_new/pool.dart';
import 'package:modulberapa/list_new/yumuyy.dart';
import 'package:flutter/material.dart';

import '../list/gensin.dart';
import '../list/list_ML.dart';
import '../list/listmax.dart';
import '../list/rift.dart';

class NewsGames extends StatelessWidget {
  const NewsGames({Key? key}) : super(key: key);

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
                Text("NEW GAMES",
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
                children: [List2k22(), ListSus(), ListFront()],
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
                children: [ListCity(), ListPool(), ListYumy()],
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
