import 'package:flutter/material.dart';

class AmcCreditCard extends StatelessWidget {
  const AmcCreditCard({super.key});

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
                    child: Text(
                  "لا توجد بطاقات محفوظة في حسابك",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )))));
  }
}
