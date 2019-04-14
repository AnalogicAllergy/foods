import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Color myColor;
  final String image;
  final String dishName;
  final String price;
  final int calories;

  Cards({this.image, this.dishName, this.price, this.calories, this.myColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
          ),
          Text(
            dishName,
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '\$$price',
            style: TextStyle(color: myColor, fontSize: 16),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.account_box,
                color: myColor,
              ),
              SizedBox(width: 4),
              Text(
                '$calories calories',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}

/*


 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Cards(
                            image: 'assets/steak.png',
                            dishName: 'Strawberry Cream Waffles',
                            price: '7',
                            calories: 273,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Cards(
                            image: 'assets/croissant.jpg',
                            dishName: 'Croissant blueberry fruit',
                            price: '18',
                            calories: 241,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Cards(
                            image: 'assets/muffin.jpg',
                            dishName: 'Hoppy muffin',
                            price: '9',
                            calories: 211,
                          ),
                        ],
                      ))
                    ],
                  ),
                )

*/
