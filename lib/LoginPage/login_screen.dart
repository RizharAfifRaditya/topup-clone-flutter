import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:modulberapa/LoginPage/auth.dart';
import 'package:modulberapa/LoginPage/dummy_data.dart';
import 'package:modulberapa/dashboard.dart';
import 'package:modulberapa/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_sign_in/google_sign_in.dart';

var hasil;

class LoginScreeen extends StatefulWidget {
  const LoginScreeen({Key? key}) : super(key: key);

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
  final _formkey = GlobalKey<FormState>();

  //controller username dan password
  final TextEditingController username = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  void initState() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null && !kIsWeb) {
        notif.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              // TODO add a proper drawable resource to android, for now using
              //      one that already exists in example app.
              icon: 'launch_background',
            ),
          ),
        );
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;
    // username textfield
    final usernameField = TextFormField(
      autofocus: false,
      controller: username,
      keyboardType: TextInputType.name,
      // validator: ,
      onSaved: (value) {
        username.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle_rounded),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final passField = TextFormField(
      autofocus: false,
      controller: password,
      obscureText: true,
      // validator: ,
      onSaved: (value) {
        password.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.key_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final loginBtn = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.deepPurple,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 10, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          // login();
          // await _googleSignIn.signIn();
          // setState(() {});
          AuthentificationService service =
              AuthentificationService(FirebaseAuth.instance);
          if (await service.signIn(
              email: username.text, password: password.text)) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => HomePage()));
          } else {
            ElevatedButton(
                child: Text('Basic Waiting Alert'),
                onPressed: () => _onBasicAlertPressed(context));
          }
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );

    final googleBtn = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(100),
      // color: Colors.deepPurple,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 8, 10, 10),
        minWidth: 50,
        // height: 20,
        onPressed: () async {
          // login();
          await signInWithGoogle();
          setState(() {});
          // AuthentificationService service =
          //     AuthentificationService(FirebaseAuth.instance);
          // service.signIn(email: username.text, password: password.text);
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (BuildContext context) => HomePage()));
        },
        child: Image.asset(
          "assets/images/google.png",
          // fit: BoxFit.contain,
          height: 60,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 380,
                        width: 250,
                        child: Image.asset(
                          "assets/images/signup.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      usernameField,
                      SizedBox(
                        height: 25,
                      ),
                      passField,
                      SizedBox(
                        height: 25,
                      ),
                      loginBtn,
                      SizedBox(
                        height: 30,
                      ),
                      googleBtn
                      // googleBtn
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }

  // SharedPreference
  Future<void> login() async {
    if (cek()) {
      SharedPreferences obj = await SharedPreferences.getInstance();
      obj.setString('nama', hasil);
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    } else {
      Get.defaultDialog(
        middleText: "Username atau Password Salah",
      );
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  bool cek() {
    for (Map<String, dynamic> item in DummyData.data) {
      if (item['username'] == username.text &&
          item['password'] == password.text) {
        hasil = item['nama'];
        print(hasil);
        return true;
      }
    }
    return false;
  }

  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
    ).show();
  }
}
