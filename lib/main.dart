import 'package:clone_app_amc/page/ad_of_login_and_register.dart';
import 'package:clone_app_amc/extensions/setup.dart';
import 'package:clone_app_amc/page/nav_bar/bloc/bottom_navigation_bar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => BottomNavigationBarBloc(),
      child: MaterialApp(
        home: AdOfLoginAndRegister(),
      ),
    );
  }
}
