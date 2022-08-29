import 'package:modulberapa/Website/listPembayaran.dart';
import 'package:modulberapa/app_bar/menu_bar.dart';
import 'package:modulberapa/list/list_ML.dart';
import 'package:modulberapa/list/listff.dart';
import 'package:modulberapa/list/listmax.dart';
import 'package:flutter/material.dart';

class CobaListBuilder extends StatefulWidget {
  const CobaListBuilder({Key? key}) : super(key: key);

  @override
  State<CobaListBuilder> createState() => _CobaListBuilderState();
}

class _CobaListBuilderState extends State<CobaListBuilder> {
  List<listPembayaran> pembayaran = [
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/gopay.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/ovo.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/dana.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/atm.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/sat.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/tri.png', Rp: 'Rp'),
    listPembayaran(harga: 'Harga', image: 'assets/pembayaran/xl.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/link.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/kredivo.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/alfa.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/indo.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/visa.png', Rp: 'Rp'),
    listPembayaran(
        harga: 'Harga', image: 'assets/pembayaran/wallet.png', Rp: 'Rp'),
  ];

  bool isChecked = false;

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
                children: [
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 43),
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset("assets/images/blizzard.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 235),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Blizzard Balance - Indonesia",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Harga sudah termasuk PPN",
                                      style: TextStyle(
                                          color: Colors.white,
                                          height: 1.2,
                                          letterSpacing: 2.0)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Top up Blizzard Balance Blizzard hanya dalam hitungan detik!"
                                            "Cukup masukan Alamat E-mail Anda, pilih jumlah Blizzard Balance yang Anda inginkan",
                                            style: TextStyle(
                                                color: Colors.white,
                                                height: 1.2,
                                                letterSpacing: 2.0)),
                                        Text("Baca Lebih Lanjut",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationThickness: 3,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    margin: EdgeInsets.only(left: 20, top: 5),
                                    height: 230,
                                    width: 370,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Pilih Voucher",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 26)),
                                          SizedBox(height: 15),
                                          Row(
                                            children: [
                                              Container(
                                                height: 65,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    color: Colors.white70,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: Colors.grey,
                                                        width: 2)),
                                                child: Text(
                                                  "Blizzard Ballance USD 5",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    height: 1.5,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                height: 65,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    color: Colors.white70,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: Colors.grey,
                                                        width: 2)),
                                                child: Text(
                                                  "Blizzard Ballance USD 10",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    height: 1.5,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                            height: 65,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                color: Colors.white70,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 2)),
                                            child: Text(
                                              "Blizzard Ballance USD 20",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                height: 1.5,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 20, right: 10),
                                    child: Container(
                                      height: 950,
                                      width: 500,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: ListView.builder(
                                        itemCount: pembayaran.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            margin: EdgeInsets.only(top: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.white70,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 2)),
                                            child: ListTile(
                                              onTap: () {},
                                              leading: new Image.asset(
                                                pembayaran[index].image,
                                                fit: BoxFit.cover,
                                                width: 50,
                                              ),
                                              trailing: Text(
                                                pembayaran[index].harga,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    margin: EdgeInsets.only(left: 20, top: 15),
                                    height: 270,
                                    width: 370,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Beli!",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 26)),
                                          Text(
                                            "Optional : Jika anda ingin mendapatkan bukti pembayaran atas pembelian anda,"
                                            "harap mengisi alamat emailnya",
                                            style: TextStyle(),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        flex: 6,
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                              labelText:
                                                                  'Alamat Email',
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10))),
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(""),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 10, right: 38),
                                            width: double.infinity,
                                            height: 45,
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                backgroundColor: Color.fromRGBO(
                                                    78, 49, 218, 40),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                "Beli Sekarang",
                                                style: TextStyle(
                                                    color: Color(0xffffffff),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Checkbox(
                                                  checkColor: Colors.white,
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
                                              Text("Ingat Saya")
                                            ], //<Widget>[]
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
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
