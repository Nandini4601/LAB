import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class CartScreen extends StatelessWidget {
  var pNames = [
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone",
  ];

  var pSizes = [
    "36",
    "M",
    "S",
    "40",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Align(
              child: Text(
                "My Cart",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 248, 248),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width / 4,
                          margin: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                              color: Color(0xFFD4EC47),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "images/${pNames[i]}.png",
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 15, top: 20, bottom: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  pNames[i],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Size",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      pSizes[i],
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$50.55",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 25,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(CupertinoIcons.minus),
                                          Text("01"),
                                          Icon(CupertinoIcons.plus),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "\$300",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2 * 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  child: Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}