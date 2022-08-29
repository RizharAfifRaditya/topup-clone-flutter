import 'package:modulberapa/Website/populercoba2.dart';
import 'package:flutter/material.dart';

class ListBlizzard extends StatelessWidget {
  const ListBlizzard({Key? key}) : super(key: key);

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
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => CobaListBuilder()));
              },
              child: Container(
                height: 120,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset("assets/svg/blizard.jpg"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
                  child: Text(
                    "Blizzard Balance",
                    style: TextStyle(
                        fontSize: 13,
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
