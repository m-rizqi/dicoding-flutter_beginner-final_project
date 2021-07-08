import 'package:final_project_dicoding/View/Journey.dart';
import 'package:final_project_dicoding/model/Recipe.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ShoppingFragment extends StatefulWidget {
  final Recipe? recipe;
  ShoppingFragment({Key? key, required this.recipe}) : super(key: key);

  @override
  _ShoppingFragmentState createState() =>
      _ShoppingFragmentState(recipe: this.recipe);
}

class _ShoppingFragmentState extends State<ShoppingFragment> {
  final Recipe? recipe;
  List<String>? ingredientKeys;
  List<bool>? checked;
  _ShoppingFragmentState({required this.recipe}){
    ingredientKeys = recipe?.ingredients.keys.toList() ?? [];
    checked = List.filled(ingredientKeys?.length ?? 0, false);
  }

  Future<bool> willPopBack() async {
    streamController.add(2);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var _crossAxisSpacing = 2;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 2;
    var _width =(_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var cellHeight = 50;
    var _aspectRatio = (_width / cellHeight);
    return WillPopScope(
        onWillPop: willPopBack,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Carousel(
                    dotSize: 5,
                    dotSpacing: 15,
                    indicatorBgPadding: 5,
                    images: [
                      Image.asset(
                        'images/market1.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'images/vegetable1.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'images/vegetable2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Let’s Find The Items',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      Container(
                        height: 5,
                        width: 130,
                        color: Color.fromRGBO(98, 80, 59, 1),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'get the ingredients in market\nor other place near to you',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(106, 106, 106, 1)),
                      ),
                      Container(
                        child: GridView.builder(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10
                              ),
                          shrinkWrap: true,
                          itemCount: ingredientKeys?.length ?? 0,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: _crossAxisCount,
                                  childAspectRatio: _aspectRatio,),
                          itemBuilder: (context, index) {
                            String e = ingredientKeys?[index]?? '';
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 10,
                                  child: Checkbox(
                                    onChanged: (bool? value) {
                                      setState(() {
                                        checked?[index] = value??false;
                                      });
                                    },
                                    value: checked?[index],
                                    activeColor: Colors.amber,
                                    checkColor: Colors.black,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      recipe?.ingredients[e] ?? '',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color.fromRGBO(106, 106, 106, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
