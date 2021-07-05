import 'package:final_project_dicoding/View/CategoryFragment.dart';
import 'package:final_project_dicoding/View/DetailFragment.dart';
import 'package:final_project_dicoding/View/ShoppingFragment.dart';
import 'package:final_project_dicoding/model/Recipe.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

StreamController<int> streamController = StreamController<int>.broadcast();

Recipe? publicRecipe = null;

int step = 1;

Widget bottomButton = Container();

Widget bottomContent = Column(
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

class MainView extends StatefulWidget {
  final Stream<int> stream;
  Recipe? recipe;
  MainView({required this.stream, this.recipe}) {
    publicRecipe = this.recipe;
  }

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  Widget fragment = CategoryFragment();

  @override
  void initState() {
    super.initState();
    widget.stream.listen((index) {
      fragmentSetState(index);
    });
  }

  void fragmentSetState(int index) {
    int fragmentIndex = 0;
    Recipe? recipe = null;
    if (index == 3) {
      fragmentIndex = index - 1;
    } else {
      String key = index.toString();
      fragmentIndex = int.parse(key.substring(0, 1));
      fragmentIndex -= 1;
      int keyList = int.parse(key.substring(1, 3));
      List<Recipe> recipeList = allList[keyList];
      int keyProduct = int.parse(key.substring(3, 5));
      recipe = recipeList[keyProduct];
      publicRecipe = recipe;
    }
    List<Widget> fragmentList = [
      CategoryFragment(),
      DetailFragment(recipe: recipe),
      ShoppingFragment(recipe: recipe),
    ];

    var steps = [1, 1, 2, 3];

  List<Widget> bottomContentList = [
    Column(
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
    ),
    Column(
      children: [
        Text(
          'Wanna Try This ?',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    ),
    Column(
      children: [
        Text(
          'Let,s Go Shooping',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        Text(
          'make sure you get all',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  ];

  List<Widget> bottomButtonList = [
  Container(),
  InkWell(
    onTap: () {
      streamController.add(3);
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color.fromRGBO(237, 119, 38, 1),
      ),
      child: Row(
        children: [
          Text(
            'NEXT',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                fontFamily: 'Poppins'),
          ),
          Icon(
            FontAwesomeIcons.arrowRight,
            size: 10,
          ),
        ],
      ),
    ),
  ),
  CircleAvatar(
    backgroundColor: Colors.amber,
    child: IconButton(
      onPressed: (){},
      icon: Icon(
        FontAwesomeIcons.arrowRight,
        color: Colors.black,
        size: 20,
      ),
    ),
  ),
];

    setState(() {
      fragment = fragmentList[fragmentIndex];
      bottomContent = bottomContentList[fragmentIndex];
      bottomButton = bottomButtonList[fragmentIndex];
      step = steps[fragmentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    fragment = widget.recipe == null
        ? fragment
        : DetailFragment(recipe: widget.recipe);
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: fragment,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSection(
              widthScreen: widthScreen,
              heightScreen: heightScreen,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSection extends StatefulWidget {
  final double widthScreen;
  final double heightScreen;
  BottomSection(
      {Key? key, required this.widthScreen, required this.heightScreen})
      : super(key: key);

  @override
  _BottomSectionState createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -4),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: (widget.widthScreen * 0.045)),
      width: widget.widthScreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 75,
            child: Column(
              children: [
                Text(
                  step.toString(),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: step == 1
                        ? Color.fromRGBO(237, 119, 38, 1)
                        : step == 2
                            ? Colors.amber
                            : Color.fromRGBO(68, 193, 141, 1),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: step == 1 ? 2 : 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.5),
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(237, 119, 38, 1),
                          ),
                        )),
                    Expanded(
                        flex: step == 2 ? 2 : 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.5),
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: step == 2 || step == 3
                                ? Colors.amber
                                : Color.fromRGBO(196, 196, 196, 1),
                          ),
                        )),
                    Expanded(
                        flex: step == 3 ? 2 : 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.5),
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: step == 3
                                ? Color.fromRGBO(68, 193, 141, 1)
                                : Color.fromRGBO(196, 196, 196, 1),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: bottomContent,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: bottomButton,
            ),
          ),
        ],
      ),
    );
  }
}
