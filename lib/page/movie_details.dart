import 'dart:html';
import 'dart:ui';

import 'package:clone_app_amc/database/data_layer.dart';
import 'package:clone_app_amc/database/model.dart';
import 'package:clone_app_amc/extensions/screen_helper.dart';
import 'package:clone_app_amc/page/movie_more_details.dart';
import 'package:clone_app_amc/page/time/time_shows.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetails extends StatelessWidget {
  MovieDetails({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: DefaultTabController(
            length:movie.isShow==0 ? GetIt.I.get<DataLayer>().moviesDetails.length:1,
            initialIndex:0,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                actions: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        child: Text(movie.filmName,
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        child: Text(
                            "${movie.ageRating} | ${movie.durationMins} min | ${movie.genres} | ${movie.primeLanguage}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ))
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
              backgroundColor: Colors.black,
              body: SingleChildScrollView(
                  child: Column(
                children: [
                  Stack(alignment: Alignment.center, children: [
                    Image.asset(movie.image,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.3),
                    InkWell(
                        onTap: () async {
                          final Uri url = Uri.parse(movie.trailer);
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url, mode: LaunchMode.inAppWebView);
                          } else {
                            print('Could not launch $url');
                          }
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        255, 254, 228, 228))),
                            child: const Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 30,
                            )))
                  ]),
                  TabBar(
                      onTap: (int index) {
                        //BlocProvider.of<NewsBloc>(context)
                        //  .add(FilterEvent(index: index));
                      },
                      indicatorWeight: 3,
                      indicatorSize:movie.isShow==0 ? TabBarIndicatorSize.tab : TabBarIndicatorSize.label,
                      indicatorColor: Colors.blue,
                      dividerColor: const Color.fromRGBO(30, 30, 30, 1),
                      labelColor: Colors.white,
                      tabs: movie.isShow ==0 ? GetIt.I.get<DataLayer>().moviesDetails : GetIt.I.get<DataLayer>().comeSoon,
                      isScrollable: false),
                  Container(
                      height: context.getHeight() * 0.6,
                      child: movie.isShow ==0 ? TabBarView(children: [
                        MovieMoreDetails(movie: movie),
                        TimeShowPage(movie: movie)
                      ]): TabBarView(children: [
                        MovieMoreDetails(movie: movie),
                      ]))
                ],
              )),
            )));
  }
}
