

import 'package:clone_app_amc/component/row_location.dart';
import 'package:clone_app_amc/database/data_layer.dart';
import 'package:clone_app_amc/page/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AmcLocation extends StatelessWidget {
  const AmcLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: SafeArea(
          child: Scaffold(
        body: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            context.read<MainBloc>().add(LoadLocation());
            if(state is ListLoad){
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                 gradient: LinearGradient(colors: [Colors.black,Colors.indigo,Colors.black])),
              child: ListView.builder(
                  itemCount: GetIt.I.get<DataLayer>().listLocation.length,
                  itemBuilder: (context, index) {
                   return RowLocation(
                        location: GetIt.I.get<DataLayer>().listLocation[index]);
                  }),
            );}return Container();
          },
        ),
      )),
    );
  }
}
