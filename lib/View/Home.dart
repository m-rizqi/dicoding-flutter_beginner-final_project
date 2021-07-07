// @dart=2.9
import 'package:final_project_dicoding/View/MainView.dart';
import 'package:final_project_dicoding/model/Recipe.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Final Project",
      theme: ThemeData(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  width: (widthScreen * 0.6),
                  child: Image.asset(
                    "images/bg1png.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ]),
              SafeArea(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: (widthScreen * 0.045)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 46,
                        ),
                        child: Text(
                          'WELCOME BACK,',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Jane',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Master',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color.fromRGBO(237, 119, 38, 1),
                              ),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color.fromRGBO(237, 119, 38, 1),
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color.fromRGBO(237, 119, 38, 1),
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color.fromRGBO(237, 119, 38, 1),
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 78),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              FontAwesomeIcons.crown,
                              color: Color.fromRGBO(237, 119, 38, 1),
                              size: 18,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Text(
                                'On Top',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: OnTopSection(
                          widthScreen: widthScreen,
                        ),
                      ),
                      Container(
                        child: ChoiceChipSection(
                          widthScreen: widthScreen,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            width: widthScreen,
            height: heightScreen,
            margin: EdgeInsets.only(bottom: 8),
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainView(stream: streamController.stream);
                }));
              },
              backgroundColor: Color.fromRGBO(240, 202, 32, 1),
              foregroundColor: Colors.black,
              icon: Icon(
                FontAwesomeIcons.play,
                size: 12,
              ),
              label: Text(
                'LET\'S GO',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            )),
      ]),
    );
  }
}

class OnTopSection extends StatefulWidget {
  final double widthScreen;
  OnTopSection({
    Key key,
    this.widthScreen,
  }) : super(key: key);

  @override
  _OnTopSectionState createState() => _OnTopSectionState();
}

class _OnTopSectionState extends State<OnTopSection> {
  final List<Recipe> onTopList = bestRecipeList;
  int _focusedIndex = 0;

  Widget _buildItemList(BuildContext context, int index) {
    return Container(
      width: (widget.widthScreen * 0.9),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MainView(stream : streamController.stream, recipe: onTopList[index],);
          }));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            side: BorderSide(color: Color.fromRGBO(98, 80, 59, 1), width: 1),
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
                    onTopList[index].image,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    onTopList[index].name,
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
                          onTopList[index].rating.round(), (int index) {
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
                            backgroundColor: Color.fromRGBO(106, 106, 106, 1),
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
                          onTopList[index].eatTime,
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
                            backgroundColor: Color.fromRGBO(106, 106, 106, 1),
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
                          onTopList[index].reviews.toString(),
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
    );
  }

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: (widget.widthScreen * 0.96),
                  child: ScrollSnapList(
                    itemBuilder: _buildItemList,
                    itemCount: onTopList.length,
                    onItemFocus: _onItemFocus,
                    itemSize: (widget.widthScreen * 0.9),
                    dynamicItemSize: true,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 300,
            margin: EdgeInsets.symmetric(horizontal: 8),
            alignment: _focusedIndex == 0
                ? Alignment.centerRight
                : _focusedIndex == (onTopList.length - 1)
                    ? Alignment.centerLeft
                    : null,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: _focusedIndex == 0 ||
                        _focusedIndex == (onTopList.length - 1)
                    ? Colors.white
                    : Colors.transparent,
              ),
              child: _focusedIndex == 0
                  ? Icon(
                      FontAwesomeIcons.chevronCircleRight,
                      color: Colors.grey,
                    )
                  : _focusedIndex == (onTopList.length - 1)
                      ? Icon(
                          FontAwesomeIcons.chevronCircleLeft,
                          color: Colors.grey,
                        )
                      : Container(),
            ),
          ),
        ],
      ),
    );
  }
}

class ChoiceChipSection extends StatefulWidget {
  final double widthScreen;
  ChoiceChipSection({
    Key key,
    this.widthScreen,
  }) : super(key: key);

  @override
  _ChoiceChipSectionState createState() => _ChoiceChipSectionState();
}

class _ChoiceChipSectionState extends State<ChoiceChipSection> {
  List<int> indexList = [0, 1, 2, 3, 4];
  int _selectedIndex = 0;
  List<Recipe> _selectedList = allList[0];

  bool selectIndex(int index, List<Recipe> list) {
    bool select = false;
    if (_selectedIndex == index) {
      _selectedList = list;
      select = true;
    }
    return select;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List<Widget>.generate(
                  indexList.length,
                  (int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        label: Text(
                          nameAllList[index],
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: _selectedIndex == indexList[index]
                                ? Colors.black
                                : Colors.black54,
                          ),
                        ),
                        selected: selectIndex(index, allList[index]),
                        selectedColor: Color.fromRGBO(240, 202, 32, 1),
                        onSelected: (bool selected) {
                          setState(() {
                            _selectedIndex =
                                (selected ? indexList[index] : null);
                          });
                        },
                      ),
                    );
                  },
                ).toList(),
              )),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainView(stream : streamController.stream, recipe: _selectedList[index],);
                      }));
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          color: Color.fromRGBO(98, 80, 59, 1),
                                          size: 12,
                                        ),
                                        Text(
                                          ' 20mins cook',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color:
                                                Color.fromRGBO(98, 80, 59, 1),
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
                                          color: Color.fromRGBO(98, 80, 59, 1),
                                          size: 12,
                                        ),
                                        Text(
                                          ' best for ${_selectedList[index].eatTime.toLowerCase()}',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color:
                                                Color.fromRGBO(98, 80, 59, 1),
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
                                          color: Color.fromRGBO(98, 80, 59, 1),
                                          size: 12,
                                        ),
                                        Text(
                                          ' ${_selectedList[index].reviews.toInt()}k user have tried',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color:
                                                Color.fromRGBO(98, 80, 59, 1),
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
    );
  }
}
