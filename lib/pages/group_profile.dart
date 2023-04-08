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
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffBFACE0),
              ),
              padding: EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height / 5,
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/Me.jpg')),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama"),
                      Text("NIM"),
                      Text("TTL"),
                      Text("Goals"),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(": Novia Adelia"),
                      Text(": 123200023"),
                      Text(": Medan, 12 November 2002"),
                      Text(": Web & Mobile Developer"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffBFACE0),
              ),
              padding: EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height / 5,
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/afrien.jpg')),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama"),
                      Text("NIM"),
                      Text("TTL"),
                      Text("Goals"),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(": Afrien Khoirunnisa Shobar"),
                      Text(": 123200093"),
                      Text(": Sleman, 29 April 2002"),
                      Text(": To be UI/UX Designer"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
