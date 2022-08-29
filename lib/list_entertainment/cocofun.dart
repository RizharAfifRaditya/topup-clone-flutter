import 'package:flutter/material.dart';

class ListCocofun extends StatelessWidget {
  const ListCocofun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
      height: 100,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.purple.shade100,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Container(
              height: 120,
              width: double.infinity,
              color: Colors.white,
              child: Image.asset("assets/svg/coco.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            child: Row(
              children: [
                Container(
                    child: Text(
                  "Cocofun",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
