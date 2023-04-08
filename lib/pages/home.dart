import 'package:flutter/material.dart';
import 'package:mobile_layout_kel5/pages/cafe_list.dart';
import 'package:mobile_layout_kel5/pages/group_profile.dart';
import 'package:mobile_layout_kel5/pages/stopwatch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Color(0xffEBC7E8),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GroupProfilePage()));
                  },
                  splashColor: Color(0xffBFACE0),
                  child: Container(
                    width: 180,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.group,
                          size: 50,
                          color: Color(0xffA084CA),
                        ),
                        SizedBox(height: 5),
                        Text("Group Profile", style: TextStyle(fontSize: 17.0)),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StopwatchPage()));
                  },
                  splashColor: Color(0xffBFACE0),
                  child: Container(
                    width: 180,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.watch_later_outlined,
                          size: 50,
                          color: Color(0xffA084CA),
                        ),
                        SizedBox(height: 5),
                        Text("Stopwatch", style: TextStyle(fontSize: 17.0)),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CafeListPage()));
                  },
                  splashColor: Color(0xffBFACE0),
                  child: Container(
                    width: 180,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.thumb_up_alt_rounded,
                          size: 50,
                          color: Color(0xffA084CA),
                        ),
                        SizedBox(height: 5),
                        Flexible(
                          child: Text(
                            "Cafe Recommendation",
                            style: TextStyle(fontSize: 17.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color(0xffBFACE0),
                  child: Container(
                    width: 180,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.favorite_outlined,
                          size: 50,
                          color: Color(0xffA084CA),
                        ),
                        SizedBox(height: 5),
                        Text("Favorite", style: TextStyle(fontSize: 17.0)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
