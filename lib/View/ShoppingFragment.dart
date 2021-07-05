import 'package:final_project_dicoding/model/Recipe.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class ShoppingFragment extends StatelessWidget {
  final Recipe? recipe;
  ShoppingFragment({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  Image.asset('images/market1.jpg',fit: BoxFit.cover,),
                  Image.asset('images/vegetable1.jpg',fit: BoxFit.cover,),
                  Image.asset('images/vegetable2.jpg',fit: BoxFit.cover,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
