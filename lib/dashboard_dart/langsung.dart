import 'package:modulberapa/list_langsung/aov.dart';
import 'package:modulberapa/list_langsung/hagomen.dart';
import 'package:modulberapa/list_langsung/honkai.dart';
import 'package:modulberapa/list_langsung/lifeapter.dart';
import 'package:modulberapa/list_langsung/ragnarok.dart';
import 'package:modulberapa/list_langsung/superwar.dart';
import 'package:flutter/material.dart';

import '../list/gensin.dart';
import '../list/list_ML.dart';
import '../list/listff.dart';
import '../list/listmax.dart';
import '../list/rift.dart';
import '../list/valo.dart';

class TopUpLangsung extends StatelessWidget {
  const TopUpLangsung({Key? key}) : super(key: key);

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
                Text("TOP UP GAME LANGSUNG",
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
                children: [ListAov(), ListHonkai(), LifeAfter()],
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
                children: [ListHago(), ListRagnarok(), ListWar()],
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
