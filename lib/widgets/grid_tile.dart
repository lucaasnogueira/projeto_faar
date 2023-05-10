import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridScreen extends StatelessWidget {
  Items item1 = new Items(
      img: "assets/campeoes.png");

  Items item2 = new Items(
    img: "assets/images/voo.png" 
  );
  Items item3 = new Items(
    img: "assets/images/futvolei.png",
  );
  Items item4 = new Items(
    img: "assets/images/respirar.png",
  );
  Items item5 = new Items(
    img: "assets/images/olimpiadas2024.png",
  );
  Items item6 = new Items(
    img: "assets/images/pelci.png",
  );
  Items item7 = new Items(
    img: "assets/images/escolinha.png",
  );
    Items item8 = new Items(
    img: "assets/images/bolsa_esporte.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6, item7, item8];
    var color = 0xFFEEFF06;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 150,
                    height: 50,
                  ),
        
        
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String img;
  Items(
      {required this.img});
}