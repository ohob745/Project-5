import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bottom_navigation_bar_bloc.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navBloc = context.read<BottomNavigationBarBloc>();
    return BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex:navBloc.selectIndex,
            showUnselectedLabels: true,

              onTap: (value) {
                navBloc.add(ChangeIndexEvent(value));
              },
              items: [
                BottomNavigationBarItem(icon: Image.asset("assets/image/nav_bar/ticket_icon.ico",color: navBloc.selectIndex==0 ?Colors.white: Color.fromRGBO(124, 124, 124, 1),width: 40,height: 40,),backgroundColor: Colors.black, label: "دائرة اي ام سي"),
                BottomNavigationBarItem(icon: Image.asset("assets/image/nav_bar/drinks&food_icon.ico",color: navBloc.selectIndex==1 ?Colors.white: Color.fromRGBO(124, 124, 124, 1),width: 40,height: 40,),backgroundColor: Colors.black, label: "المأكولات والمشروبات"),
                BottomNavigationBarItem(icon: Image.asset("assets/image/nav_bar/offers_icon.ico",color: navBloc.selectIndex==2 ?Colors.white: Color.fromRGBO(124, 124, 124, 1),width: 40,height: 40,),backgroundColor: Colors.black, label: "العروض"),
                BottomNavigationBarItem(icon: Image.asset("assets/image/nav_bar/location_icon.ico",color: navBloc.selectIndex==3 ?Colors.white: Color.fromRGBO(124, 124, 124, 1),width: 40,height: 40,),backgroundColor: Colors.black, label: "دور السينما"),
                BottomNavigationBarItem(icon: Image.asset("assets/image/nav_bar/ticket_icon.ico",color: navBloc.selectIndex==4 ?Colors.white: Color.fromRGBO(124, 124, 124, 1),width: 40,height: 40,),backgroundColor: Colors.black, label: "مشاهدة فيلم"),

                ]),body: navBloc.pages[navBloc.selectIndex],
        );
      },
    );
  }
}
