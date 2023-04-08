import 'package:flutter/material.dart';
import 'package:mobile_layout_kel5/data/cafe.dart';
import 'package:mobile_layout_kel5/pages/cafe_detail.dart';

class CafeList extends StatelessWidget {
  const CafeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Cafe List"),
        ),
        body: ListView.builder(
          itemCount: listCafe.length,
          itemBuilder: (context, index) {
            final DataCafe cafe = listCafe[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CafeDetail(cafe: cafe),
                  ),
                );
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 200, child: Image.network(cafe.photo)),
                    Flexible(
                        child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cafe.name,
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                              ],
                            ))),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
