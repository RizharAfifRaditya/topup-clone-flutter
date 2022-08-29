import 'package:modulberapa/dashboard_dart/langsung.dart';
import 'package:modulberapa/dashboard_dart/promo.dart';
import 'package:modulberapa/dashboard_dart/newgames.dart';
import 'package:modulberapa/dashboard_dart/tainmen.dart';
import 'package:modulberapa/dashboard_dart/voucher.dart';
import 'package:modulberapa/list/gensin.dart';
import 'package:modulberapa/list/list_ML.dart';
import 'package:modulberapa/list/listff.dart';
import 'package:modulberapa/list/listmax.dart';
import 'package:modulberapa/list/rift.dart';
import 'package:modulberapa/list/valo.dart';
import 'package:flutter/material.dart';

import 'dashboard_dart/indonesia.dart';

class MenuPopuler extends StatelessWidget {
  const MenuPopuler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("POPULER",
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
                children: [ListPopuler(), ListPopuler2(), ListPopuler3()],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 200,
              // color: Colors.red,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [ListValorant(), ListGenshin(), ListwildRift()],
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
            NewsGames(), TopUpLangsung(), Entertainment(), Voucher(),
            Newspromo(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                height: 100,
                width: double.infinity,
                // color: Colors.red,
                child: Column(
                  children: [
                    Text(
                      "CODASHOP INDONESIA",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                child: Text(
                  "Codashop: Website top-up terbesar, tercepat, dan terpecaya di indonesia",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                child: Text(
                  "Setiap bulannya, jutaan gamers menggunakan Codashop untuk melakukan pembelian kredit game dengan"
                  "lancar: tanpa registrasi ataupun log-in, dan kredit permainan akan ditambahkan secara instan."
                  "Top-up Mobile Legends, Free Fire, Ragnarok M, dan berbagai game lainnya!",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
            Container(
                // height: 400,
                // width: 400,
                // color: Colors.blue,
                child: Column(
              children: [
                Image.asset("assets/svg/bayar.png"),
                Image.asset("assets/svg/instan.png"),
                Image.asset("assets/svg/terbaik.png"),
                Image.asset("assets/svg/layanan.png"),
                Image.asset("assets/svg/promosi.png")
              ],
            )),
          ],
        ),
      ),
    );
  }
}
