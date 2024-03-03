import 'package:flutter/material.dart';

class DrinkAndFoodPage extends StatelessWidget {
  const DrinkAndFoodPage({super.key, required this.titlePage});
final String titlePage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Text("$titlePage",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ],
        leading: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.white)),
            child: Icon(
              Icons.person_outline_outlined,
              color: Colors.white,
              size: 30,
            )),
            
      ),floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,floatingActionButton: InkWell(onTap: (){},child: Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue),child: Icon(Icons.chat,color: Colors.white,))),
    backgroundColor: Colors.black,body: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
      Image.asset("assets/image/food_and_drink/www.amccinemas.com_ar_foodanddrink_1.png"),
      Image.asset("assets/image/food_and_drink/www.amccinemas.com_ar_foodanddrink_2.png"),
      Image.asset("assets/image/food_and_drink/www.amccinemas.com_ar_foodanddrink_3.png"),
      Image.asset("assets/image/food_and_drink/www.amccinemas.com_ar_foodanddrink_4.png"),
      Image.asset("assets/image/food_and_drink/www.amccinemas.com_ar_foodanddrink_5.png"),
      ],)),));
  }
}