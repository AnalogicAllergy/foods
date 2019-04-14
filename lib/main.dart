import 'package:flutter/material.dart';
import 'package:foods/cards.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

//* color: #FF8B7D / 255, 139 125
class Home extends StatelessWidget {
  var myColor = Color.fromARGB(255, 255, 139, 125);
  var backgroundColor = Color.fromARGB(255, 249, 240, 235);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text("Foodies"),
        elevation: 0,
        backgroundColor: myColor,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 4, right: 16, bottom: 4),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: myColor,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(75))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Good Afternoon!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "Choose your favourite!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width - 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Search for your favourites',
                                border: InputBorder.none,
                                icon: Icon(
                                  Icons.search,
                                  size: 16,
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 16, left: 16, right: 16, bottom: 4),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Text(
                          'DESSERT',
                          style: TextStyle(color: Colors.brown, fontSize: 18),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text('PIZZA',
                            style:
                                TextStyle(color: Colors.brown, fontSize: 18)),
                        SizedBox(
                          width: 12,
                        ),
                        Text('BARBECUE',
                            style:
                                TextStyle(color: Colors.brown, fontSize: 18)),
                        SizedBox(
                          width: 12,
                        ),
                        Text('DRINKS',
                            style:
                                TextStyle(color: Colors.brown, fontSize: 18)),
                        SizedBox(
                          width: 12,
                        ),
                        Text('ENTRIES',
                            style:
                                TextStyle(color: Colors.brown, fontSize: 18)),
                        SizedBox(
                          width: 12,
                        ),
                        Text('PASTRIES',
                            style:
                                TextStyle(color: Colors.brown, fontSize: 18)),
                      ],
                    ),
                    //* fim secao dishes
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 230,
                      //! ao setar o height do container, seu listview nao da pau quanod tem 2 listview na mesma tela
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Cards(
                            image: 'assets/steak.png',
                            dishName: 'Strawberry Cream Waffles',
                            price: '7',
                            myColor: myColor,
                            calories: 273,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Cards(
                            image: 'assets/croissant.jpg',
                            dishName: 'Croissant blueberry fruit',
                            price: '18',
                            myColor: myColor,
                            calories: 241,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Cards(
                            image: 'assets/muffin.jpg',
                            dishName: 'Hoppy muffin',
                            price: '9',
                            myColor: myColor,
                            calories: 211,
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                //! resto do body - wacky card
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "RECOMMENDED",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ListView(
                      children: <Widget>[
                        _buildRecomendedCard(
                            context,
                            "Chocolate Lemon cupcake",
                            'assets/cupcake.jpg',
                            'The sour and the sweeteness of chocolate\n and lemon that neutralizes the \nsweeteness of the cream',
                            18,
                            134,
                            2412,
                            3,
                            myColor),
                        SizedBox(
                          height: 20,
                        ),
                        _buildRecomendedCard(
                            context,
                            "Ribs and Barbie",
                            'assets/ribs.jpg',
                            'Costelinha glaceada no molho barbecue',
                            72,
                            931,
                            980,
                            4,
                            myColor),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildRecomendedCard(
    BuildContext context,
    String dishNameRec,
    String imgPath,
    String description,
    double price,
    int hearts,
    int calories,
    int portions,
    Color myColor) {
  return Stack(
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      dishNameRec,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(
                        color: Colors.brown.shade500,
                      ),
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(color: myColor, fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 200),
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 245, 239),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                Text("$hearts"),
                Icon(
                  Icons.account_box,
                  color: myColor,
                ),
                Text("$calories"),
                Icon(
                  Icons.rounded_corner,
                  color: myColor,
                ),
                Text("$portions"),
              ],
            ),
          )
        ],
      ),
    ],
  );
}
