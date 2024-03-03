import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clone_app_amc/page/amc_daera.dart';
import 'package:clone_app_amc/page/finish/drink_&_food_page.dart';
import 'package:clone_app_amc/page/location_page.dart';
import 'package:clone_app_amc/page/finish/offer_page.dart';
import 'package:clone_app_amc/page/see_a_movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc extends Bloc<BottomNavigationBarEvent, BottomNavigationBarState> {
      List<Widget> pages = <Widget>[
    AmcDaera(titlePage: "دائرة اي ام سي"),
    const DrinkAndFoodPage(titlePage: "المأكولات والمشروبات"),
    const OffersPage(titlePage: "عروض اي ام سي الحصرية"),
    const LocationPage(titlePage: "دور السينما"),
    SeeAMovie(titlePage: "اي ام سي السينما"),
    ];
  
    int selectIndex=4;
  BottomNavigationBarBloc() : super(BottomNavigationBarInitial()) {

    on<BottomNavigationBarEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<ChangeIndexEvent>(ChangeIndex);
  }

  FutureOr<void> ChangeIndex(ChangeIndexEvent event, Emitter<BottomNavigationBarState> emit) {
    print(event.index);
    selectIndex=event.index;
emit(SuccessChangeIndex());
  }
}
