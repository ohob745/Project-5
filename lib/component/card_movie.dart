
import 'package:clone_app_amc/database/model.dart';
import 'package:clone_app_amc/extensions/screen_helper.dart';
import 'package:clone_app_amc/page/movie_details.dart';
import 'package:flutter/material.dart';

class CardMovie extends StatelessWidget {
  CardMovie({
    required this.movie,
    super.key,
  });
final Movie movie;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      context.pushTo(view: MovieDetails(movie: movie,));
    },
      child: Container(
        color: const Color.fromRGBO(17, 17, 17, 1),
        //padding: const EdgeInsets.all(16.0),
        //height: MediaQuery.of(context).size.height,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Center(
              child: Stack(
                children: [
                  Image.asset(
                    movie.imagePoster,
                    fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
                  ),
                  Positioned(
                      right: 30,
                      top: 30,
                      child: Container(width: 40,height: 40,
                          child: Center(
                            child: Text(movie.ageRating,
                                style: TextStyle(color: Colors.white)),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(107, 0, 0, 0),
                              border: Border.all(
                                  width: 1, color: Colors.white)))),
                  Positioned(right: 70,
                      bottom: 10,
                      child: Container(decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 30,blurStyle: BlurStyle.inner,spreadRadius:30,color: Colors.black)]),child: Text(movie.filmName,style: TextStyle(fontSize: 15,color: Colors.white))),)
                ],
              ),
            )),
      ),
    );
  }
}
