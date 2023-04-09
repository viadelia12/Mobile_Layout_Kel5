import 'package:flutter/material.dart';
import 'package:mobile_layout_kel5/data/cafe.dart';
import 'package:url_launcher/url_launcher.dart';

class CafeDetailPage extends StatefulWidget {
  final DataCafe cafe;
  const CafeDetailPage({Key? key, required this.cafe}) : super(key: key);

  @override
  State<CafeDetailPage> createState() => _CafeDetailPageState();
}

class _CafeDetailPageState extends State<CafeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.cafe.name),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(child: Center(child: Image.network(widget.cafe.photo))),
          SizedBox(height: 20),
          Text(
            widget.cafe.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Text(widget.cafe.address),
                ),
                SizedBox(height: 10),
                Text(
                  "Range Price :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Text(widget.cafe.rangePrices),
                ),
                SizedBox(height: 10),
                Text(
                  "Open Hours :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Text(widget.cafe.openHours),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              await urlLaunch(widget.cafe.addressLink);
            },
            child: Text("Visit Cafe"),
          ),
        ],
      ),
    );
  }

  Future<void> urlLaunch(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
