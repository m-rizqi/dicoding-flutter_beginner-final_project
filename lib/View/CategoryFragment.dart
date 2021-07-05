import 'package:final_project_dicoding/View/DetailFragment.dart';
import 'package:final_project_dicoding/View/MainView.dart';
import 'package:final_project_dicoding/model/Recipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryFragment extends StatefulWidget {
  CategoryFragment({Key? key}) : super(key: key);

  @override
  _CategoryFragmentState createState() => _CategoryFragmentState();
}

class _CategoryFragmentState extends State<CategoryFragment> {
  int _selectedIndex = 0;
  List<Recipe> _selectedList = allList[0];
  String keyList = "00";
  String keyProduct = "00";

  Widget categoryBox(String text, int index, IconData icon) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          _selectedList = allList[index];
          switch (index) {
            case 0:
              keyList = "00";
              break;
            case 1:
              keyList = "01";
              break;
            case 2:
              keyList = "02";
              break;
            case 3:
              keyList = "03";
              break;
            case 4:
              keyList = "04";
              break;
            default:
          }
        });
      },
      child: Column(children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _selectedIndex == index
                  ? Color.fromRGBO(98, 80, 59, 1)
                  : Colors.grey,
              width: _selectedIndex == index ? 2.5 : 1,
            ),
            color: Color.fromRGBO(248, 248, 248, 1),
          ),
          child: Icon(
            icon,
            color: _selectedIndex == index ? Colors.amber : Colors.black54,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, bottom: 100),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Color.fromRGBO(98, 80, 59, 1),
                    size: 20,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    FontAwesomeIcons.search,
                    color: Color.fromRGBO(98, 80, 59, 1),
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              categoryBox("Best", 0, Icons.star_rounded),
              categoryBox("Fast", 1, FontAwesomeIcons.bolt),
              categoryBox("Easy", 2, FontAwesomeIcons.egg),
              categoryBox("Vegan", 3, FontAwesomeIcons.carrot),
              categoryBox("Beverage", 4, FontAwesomeIcons.glassMartiniAlt),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.045),
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Row(children: [
                  Icon(
                    FontAwesomeIcons.solidCheckCircle,
                    color: Colors.amber,
                    size: 14.5,
                  ),
                  Text(
                    ' Best In This Category',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
                InkWell(
                  onTap: () {
                    keyProduct = "00";
                    String temp = "2" + keyList + keyProduct;
                    int key = int.parse(temp);
                    streamController.add(key);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      side: BorderSide(
                          color: Color.fromRGBO(98, 80, 59, 1), width: 1),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              _selectedList[0].image,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              _selectedList[0].name,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            alignment: Alignment.center,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List<Widget>.generate(
                                    _selectedList[0].rating.round(),
                                    (int index) {
                                  return Icon(
                                    Icons.star_rounded,
                                    color: Color.fromRGBO(240, 202, 32, 1),
                                  );
                                })),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 11),
                            padding: EdgeInsets.only(bottom: 11),
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
                                    _selectedList[0].eatTime,
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
                                    _selectedList[0].reviews.toString(),
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
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        children: List<Widget>.generate(
                      _selectedList.length,
                      (index) => Container(
                        height: 150,
                        margin: EdgeInsets.symmetric(vertical: 4),
                        child: InkWell(
                          onTap: () {
                            String temp = "2" + keyList + keyProduct;
                            int key = int.parse(temp);
                            streamController.add(key);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 5,
                                    offset: Offset(3, 3),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        _selectedList[index].image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 15,
                                    ),
                                    padding: EdgeInsets.only(
                                      top: 2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _selectedList[index].name,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 11),
                                          child: Row(
                                            children: [
                                              Icon(
                                                FontAwesomeIcons.solidClock,
                                                color: Color.fromRGBO(
                                                    98, 80, 59, 1),
                                                size: 12,
                                              ),
                                              Text(
                                                ' 20mins cook',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      98, 80, 59, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 11),
                                          child: Row(
                                            children: [
                                              Icon(
                                                FontAwesomeIcons.utensilSpoon,
                                                color: Color.fromRGBO(
                                                    98, 80, 59, 1),
                                                size: 12,
                                              ),
                                              Text(
                                                ' best for ${_selectedList[index].eatTime.toLowerCase()}',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      98, 80, 59, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 11),
                                          child: Row(
                                            children: [
                                              Icon(
                                                FontAwesomeIcons.userAlt,
                                                color: Color.fromRGBO(
                                                    98, 80, 59, 1),
                                                size: 12,
                                              ),
                                              Text(
                                                ' ${_selectedList[index].reviews.toInt()}k user have tried',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      98, 80, 59, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
