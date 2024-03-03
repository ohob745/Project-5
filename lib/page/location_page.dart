import 'package:clone_app_amc/component/row_location.dart';
import 'package:clone_app_amc/database/data_layer.dart';
import 'package:clone_app_amc/page/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key,this.titlePage});
  final String? titlePage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: Text("$titlePage",
                  style: const TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
          leading: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.white)),
              child: const Icon(
                Icons.person_outline_outlined,
                color: Colors.white,
                size: 30,
              )),
        ),
        body: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            context.read<MainBloc>().add(LoadLocation());
            if(state is ListLoad){
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/image/images.jpg"),
                fit: BoxFit.fill,
              )),
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
