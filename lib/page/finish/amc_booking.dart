import 'package:flutter/material.dart';

class AmcBooking extends StatelessWidget {
  const AmcBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.indigo, Colors.black])),
                child: Center(
                  child: Text("لا توجد حجوزات متاحة",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ))));
  }
}
