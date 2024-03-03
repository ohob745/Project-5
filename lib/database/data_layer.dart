import 'dart:convert';

import 'package:clone_app_amc/database/model.dart';
import 'package:clone_app_amc/database/the_list_data.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class DataLayer{
  List<Movie> allMovie=[];
    List<Movie> onlyShow=[];
    List<Locations> listLocation=[];

    List<Widget> moviesDetails = [
      const Tab(text: "تفاصيل الفلم"),
      const Tab(text: "أوقات العرض"),
    ];
    List<Widget> comeSoon = [
      const Tab(text: "تفاصيل الفلم"),
    ];

      List<Tab> listFilter = <Tab>[
    const Tab(text: "يعرض قريبا"),
    const Tab(text: "يعرض الان"),
  ];
          List<Tab> amcDaera = <Tab>[
    const Tab(text:  "البطاقات المحفوظة"),
    const Tab(text:  "التفضيلات"),
    const Tab(text:  "الحجوزات السابقة"),
    const Tab(text: "دائرة اي ام سي"),
    ];

final box=GetStorage();

  addUser({required Movie user}){
    allMovie.add(user);
    List<Map<String,dynamic>> dataAsJson=[];
    for(var e in allMovie){
      dataAsJson.add(e.toJson());
    }
box.write("allMovie",json.encode(dataAsJson));
  }
LoadData(){
  for (var e in locationsData) {
    print("aaa");
        print(e);
        listLocation.add(Locations.fromJson(e));}
      for (var e in moviesData) {
        allMovie.add(Movie.fromJson(e));
             
}
// if(box.hasData("location")){
  
// }else{
// box.write("location",json.encode(moviesData));
// }
}
onlyShowFun(number){
  onlyShow.clear();
  for(var e in allMovie){
    if(e.isShow==number){
       onlyShow.add(e);
    }
  }
}
}