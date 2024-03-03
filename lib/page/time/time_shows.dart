import 'dart:ui';

import 'package:clone_app_amc/database/model.dart';
import 'package:clone_app_amc/extensions/screen_helper.dart';
import 'package:clone_app_amc/page/time/bloc/time_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class TimeShowPage extends StatelessWidget {
  TimeShowPage({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimeBloc(),
      child: Builder(
        builder: (context) {
          DateTime? selected;
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage(movie.imagePoster),
              ),
            ),
            height: context.getHeight() * 0.6,
            child: BackdropFilter(
              blendMode: BlendMode.dstOver,
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Column(
                children: [
                  Container(
                    color: const Color.fromARGB(143, 0, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/image/movie_image/icon-filter.svg",
                                width: 40,
                                height: 40,
                              ),
                            ),
                            Text("تصنيف"),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                final DateTime? picked = await showDatePicker(
                                  context: context,
                                  initialDate: selected ?? DateTime.now(),
                                  firstDate: DateTime(DateTime.now().day + 1),
                                  lastDate: DateTime(DateTime.now().year,
                                      DateTime.now().month + 1),
                                );

                                if (picked != null) {
                                  final timeBloc =
                                      BlocProvider.of<TimeBloc>(context);
                                  print(picked);
                                  timeBloc.add(GetInfo(time: picked));
                                }
                              },
                              child: Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            BlocBuilder<TimeBloc, TimeState>(
                                builder: (context, state) {
                              if (state is TimeLoading) {
                                Text("${state.time!.month}/${state.time!.day}");
                              }

                              return Text(
                                  "${DateTime.now().month} ${DateTime.now().day}");
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
