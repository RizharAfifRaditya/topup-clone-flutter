import 'package:flutter/material.dart';

class ListNimo extends StatelessWidget {
  const ListNimo({Key? key}) : super(key: key);

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
              child: Image.asset("assets/svg/nimo.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              children: [
                Container(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 31, vertical: 1),
                  child: Text(
                    "Nimo TV",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
