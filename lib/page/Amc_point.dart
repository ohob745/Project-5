import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AmcPoint extends StatelessWidget {
  const AmcPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.indigo, Colors.black])),
                
        child: Column(children: [
          Text("دائرة اي ام سي",style: TextStyle(color: Colors.white,fontSize: 20,decoration: TextDecoration.underline)),
          Image.asset("assets/image/Screenshot 2024-03-03 004909.png")],),
      ),
    );
  }
}