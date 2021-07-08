import 'package:final_project_dicoding/View/Journey.dart';
import 'package:final_project_dicoding/model/Recipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailFragment extends StatelessWidget {
  final Recipe? recipe;
  DetailFragment({Key? key, this.recipe});

  Future<bool> willPopBack() async {
    streamController.add(0);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var _crossAxisSpacing = 2;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 2;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var cellHeight = 35;
    var _aspectRatio = _width / cellHeight;
    List<String> ingredientKeys = recipe!.ingredients.keys.toList();
    return WillPopScope(
        onWillPop: willPopBack,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 110),
            child: Column(
              children: [
                Container(
                  height: 250,
                  child: Image.network(
                    recipe!.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        recipe!.name,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      child: Text(
                        'recipe by author',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(106, 106, 106, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(
                              recipe!.rating.round(), (int index) {
                            return Icon(
                              Icons.star_rounded,
                              color: Color.fromRGBO(240, 202, 32, 1),
                            );
                          })),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.solidClock,
                            color: Color.fromRGBO(106, 106, 106, 1),
                            size: 13,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: Text(
                              '20mins',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color.fromRGBO(106, 106, 106, 1),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(106, 106, 106, 1),
                                radius: 3,
                              )),
                          Padding(
                            padding: EdgeInsets.only(left: 3),
                            child: Icon(
                              FontAwesomeIcons.utensils,
                              color: Color.fromRGBO(106, 106, 106, 1),
                              size: 12,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: Text(
                              recipe!.eatTime,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color.fromRGBO(106, 106, 106, 1),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(106, 106, 106, 1),
                                radius: 3,
                              )),
                          Padding(
                            padding: EdgeInsets.only(left: 3),
                            child: Icon(
                              FontAwesomeIcons.userAlt,
                              color: Color.fromRGBO(106, 106, 106, 1),
                              size: 12,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: Text(
                              recipe!.reviews.toString() + 'K',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color.fromRGBO(106, 106, 106, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Text(
                    '   ' + recipe!.description,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Row(children: [
                    Icon(
                      FontAwesomeIcons.solidListAlt,
                      color: Colors.amber,
                      size: 14.5,
                    ),
                    Text(
                      ' ingredients',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
                ),
                Container(
                    child: GridView.builder(
                  padding: EdgeInsets.only(
                      left: 5.0, right: 5.0, top: 10, bottom: 10),
                  shrinkWrap: true,
                  itemCount: ingredientKeys.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: _crossAxisCount,
                      childAspectRatio: _aspectRatio),
                  itemBuilder: (context, index) {
                    String e = ingredientKeys[index];
                    return Row(
                      children: [
                        Container(
                          height: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                        ),
                        Text(
                          e,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    );
                  },
                )),
              ],
            ),
          ),
        ));
  }
}
