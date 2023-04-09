import 'package:flutter/material.dart';

class GroupProfilePage extends StatefulWidget {
  const GroupProfilePage({Key? key}) : super(key: key);

  @override
  State<GroupProfilePage> createState() => _GroupProfilePageState();
}

class _GroupProfilePageState extends State<GroupProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group Profile"),
        backgroundColor: Color(0xffEBC7E8),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Me.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama"),
                              Text("NIM"),
                              Text("TTL"),
                              Text("Goals"),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(": Novia Adelia"),
                              Text(": 123200023"),
                              Text(": Medan, 12 November 2002"),
                              Text(": Web & Mobile Developer"),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/afrien.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama"),
                              Text("NIM"),
                              Text("TTL"),
                              Text("Goals"),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(": Afrien Khoirunnisa Shobar"),
                              Text(": 123200093"),
                              Text(": Sleman, 29 April 2002"),
                              Text(": To be UI/UX Designer"),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
