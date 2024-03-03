import 'package:clone_app_amc/database/model.dart';
import 'package:clone_app_amc/page/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Stars extends StatelessWidget {
  Stars({required this.location, Key? key}) : super(key: key);

    final Locations location;

  @override
  Widget build(BuildContext context) {
    Color color = location.isFavorite ? Colors.white : Colors.grey;
    return IconButton(
      icon: Icon(
        size: 20,
        location.isFavorite ? Icons.bookmark : Icons.bookmark_border,
        color: color,
      ),
      onPressed: () {
        location.isFavorite = !location.isFavorite;
     BlocProvider.of<MainBloc>(context).add(UpdateLocation(location: location));
      },
    );
  }
}
