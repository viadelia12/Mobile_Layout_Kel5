import 'package:flutter/material.dart';
import 'package:mobile_layout_kel5/data/cafe.dart';

import 'cafe_detail.dart';

class FavoriteCafePage extends StatelessWidget {
  const FavoriteCafePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Cafe"),
      ),
      body: ListView.builder(
        itemCount: listCafe
            .where((element) => element.favorite == true)
            .toList()
            .length,
        itemBuilder: (context, index) {
          List list =
              listCafe.where((element) => element.favorite == true).toList();
          DataCafe cafe = list[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CafeDetailPage(cafe: cafe),
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
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cafe.name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(cafe.rangePrices)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
