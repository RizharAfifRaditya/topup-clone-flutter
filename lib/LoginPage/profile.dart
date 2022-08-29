import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modulberapa/LoginPage/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:modulberapa/app_bar/menu_bar.dart';

import '../dashboard.dart';
import 'login_screen.dart';

String Nama = "Tidak ada Data";

class ProfileData extends StatefulWidget {
  const ProfileData({Key? key}) : super(key: key);

  @override
  State<ProfileData> createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  void initState() {
    // cekValid().whenComplete(() async => Get.to(
    //       Nama == "Tidak Ada Data" ? LoginScreeen() : HomePage(),
    //     ));
  }

  // Future cekValid() async {
  //   final SharedPreferences hasil = await SharedPreferences.getInstance();

  //   var tampung = hasil.getString('nama');
  //   if (tampung != null) {
  //     setState(() {
  //       Nama = tampung;
  //     });
  //   }
  // }

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
                        // margin,
                        color: Colors.white,
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 65, horizontal: 10),
                        child: Container(
                          child: Text(
                            "HALOO ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100, left: 150),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.deepPurple,
                          child: MaterialButton(
                            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            onPressed: () {
                              AuthentificationService service =
                                  AuthentificationService(
                                      FirebaseAuth.instance);
                              service.signOut();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginScreeen()));
                            },
                            child: Text(
                              "Logout",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
