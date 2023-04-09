import 'package:flutter/material.dart';
import 'package:mobile_layout_kel5/components/palettes.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
        actions: [
          IconButton(
              icon: Icon(Icons.logout_outlined),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    content: const Text('Are you sure want to log out?'),
                    actions: <TextButton>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'No',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/login', (Route<dynamic> route) => false);
                        },
                        child: const Text('Yes',
                            style: TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                );
              })
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "How To Use",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(191, 172, 224, 0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      "1. Untuk menggunakan aplikasi ini, pengguna harus log in.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "2. Setelah log in, maka akan langsung mengarah ke home page yang berisikan empat menu utama.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "3. Pada menu 'Group Profile' akan ditampilkan biodata anggota group mobile developer aplikasi ini.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "4. Menu 'Stopwatch' ialah menu yang akan mengukur waktu berlalu dalam jam, menit, detik, dan milidetik.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "5. Menu 'Cafe Recommendation' akan menampilkan list coffee shop yang ada di Jogja.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "6. Menu 'Favorite' akan menampilkan list coffee shop yang ditandai favorite oleh pengguna.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "7. Pada menu 'Help' akan terdapat cara menggunakan aplikasi dan button log out. Ketika pengguna menekan button log out dan memilih konfirmasi 'Yes', maka pengguna akan langsung diarahkan ke login page.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
