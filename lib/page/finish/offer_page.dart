import 'package:clone_app_amc/extensions/screen_helper.dart';
import 'package:clone_app_amc/page/finish/offer_more_details.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key, required this.titlePage});
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
      ),
    backgroundColor: Colors.black,body: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
      Image.asset("assets/image/AMC-Sharing-Combo_ARB_735px_525px.jpg"),Text("كومبو المشاركة",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)),Text("احصل على كومو المشاركة بسعر 239 ريال",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)),ElevatedButton(onPressed: (){context.pushTo(view: OfferMoreDetails());}, child: Text("تعرف أكثر")),
      Image.asset("assets/image/AMC-Sharing-Combo_ARB_735px_525px.jpg"),Text("كومبو المشاركة",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)),Text("احصل على كومو المشاركة بسعر 239 ريال",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)),ElevatedButton(onPressed: (){context.pushTo(view: OfferMoreDetails());}, child: Text("تعرف أكثر")),
      ],)),));
  }
}
