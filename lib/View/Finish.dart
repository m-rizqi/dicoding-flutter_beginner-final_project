import 'package:final_project_dicoding/View/Home.dart';
import 'package:final_project_dicoding/model/Recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Finsih extends StatelessWidget {
  final Recipe? recipe;
  Finsih({Key? key, this.recipe}) : super(key: key);

  Future<bool> willPopBack() async {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: willPopBack,
      child: Container(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/bg2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    border: Border.all(
                      color: Color.fromRGBO(98, 80, 59, 1),
                      width: 2,
                    ),
                  ),
                  child: Text(
                    'You just made it',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        color: Color.fromRGBO(237, 119, 38, 1)),
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Container(
                    width: 300,
                    height: 480,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'YOU ARE GREAT',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  width: 250,
                                  height: 2,
                                ),
                              ]),
                        ),
                        Text(
                          recipe!.name,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Image.network(recipe!.image),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'How many stars for this ?',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: RatingBar.builder(
                            initialRating: 0,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) {
                              return Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              );
                            },
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => Home()),
                                  (Route<dynamic> route) => false);
                            },
                            color: Colors.white,
                            icon: Icon(
                              FontAwesomeIcons.solidCheckCircle,
                              color: Color.fromRGBO(68, 193, 141, 1),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
