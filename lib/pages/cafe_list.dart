import 'package:flutter/material.dart';
import 'package:mobile_layout_kel5/data/cafe.dart';
import 'package:mobile_layout_kel5/pages/cafe_detail.dart';

class CafeListPage extends StatefulWidget {
  const CafeListPage({Key? key}) : super(key: key);

  @override
  State<CafeListPage> createState() => _CafeListPageState();
}

class _CafeListPageState extends State<CafeListPage> {
  bool isFavorite = false;

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
          DataCafe cafe = listCafe[index];

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
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (listCafe[index].favorite == false) {
                          listCafe[index].favorite = true;
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Added to favorite"),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        } else {
                          listCafe[index].favorite = false;
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Removed from favorite"),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        }
                      });
                    },
                    icon: Icon(
                        cafe.favorite ? Icons.favorite : Icons.favorite_border),
                    color: cafe.favorite ? Colors.red : Colors.black,
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
