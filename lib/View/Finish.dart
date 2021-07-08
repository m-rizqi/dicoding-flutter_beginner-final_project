import 'package:final_project_dicoding/View/Home.dart';
import 'package:final_project_dicoding/View/Journey.dart';
import 'package:final_project_dicoding/model/Recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Finish extends StatelessWidget {
  final Recipe? recipe;
  Finish({Key? key, this.recipe}) : super(key: key);

  Future<bool> willPopBack() async {
    return false;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 50),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 16,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  height: 1,
                                  child: Container(
                                    color: Colors.black54,
                                  ),
                                ),
                              ]),
                        ),
                        Text(
                          recipe?.name ?? '',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Image.network(recipe?.image ?? ''),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 10),
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
                          height: 25,
                        ),
                        IconButton(
                            onPressed: () {
                              step = 1;
                              bottomButton = Container();
                              bottomContent = Column(
                                children: [
                                  Text(
                                    'Choose The Food',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'there is a lot menu there,\nwich one do you want ?',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              );
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => Home()),
                                  (Route<dynamic> route) => false);
                            },
                            color: Colors.white,
                            icon: Icon(
                              FontAwesomeIcons.solidCheckCircle,
                              color: Color.fromRGBO(68, 193, 141, 1),
                              size: 40,
                            )),
                        SizedBox(height: 20,)
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
