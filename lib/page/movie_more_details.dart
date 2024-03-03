import 'dart:ui';

import 'package:clone_app_amc/database/model.dart';
import 'package:clone_app_amc/extensions/screen_helper.dart';
import 'package:flutter/material.dart';

class MovieMoreDetails extends StatelessWidget {
  MovieMoreDetails({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage(
                  movie.imagePoster,
                ))),
        height: context.getHeight() * 0.6,
        child: BackdropFilter(
          blendMode: BlendMode.dstOver,
          filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text("الترجمة",
                    style: TextStyle(
                        fontSize: 15,
                        shadows: [
                          Shadow(blurRadius: 10, color: Colors.black),
                        ],
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10,
                ),
                Text(movie.subtitles.toString(),
                    style: const TextStyle(
                        fontSize: 15,
                        shadows: [
                          Shadow(blurRadius: 10, color: Colors.black),
                        ],
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10,
                ),
                const Text("تاريخ الإطلاق",
                    style: TextStyle(
                        fontSize: 15,
                        shadows: [
                          Shadow(blurRadius: 10, color: Colors.black),
                        ],
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10,
                ),
                Text(movie.releaseDates,
                    style: const TextStyle(
                        fontSize: 15,
                        shadows: [
                          Shadow(blurRadius: 10, color: Colors.black),
                        ],
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10,
                ),
                const Text("الممثلين وطاقم العمل",
                    style: TextStyle(
                        fontSize: 15,
                        shadows: [
                          Shadow(blurRadius: 10, color: Colors.black),
                        ],
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10,
                ),
                Text(movie.cast,
                    style: const TextStyle(
                        fontSize: 15,
                        shadows: [
                          Shadow(blurRadius: 10, color: Colors.black),
                        ],
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10,
                ),
                const Text("عن الفيلم",
                    style: TextStyle(
                        fontSize: 15,
                        shadows: [
                          Shadow(blurRadius: 10, color: Colors.black),
                        ],
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10,
                ),
                Text(movie.story,
                    style: const TextStyle(
                        fontSize: 15,
                        shadows: [
                          Shadow(blurRadius: 10, color: Colors.black),
                        ],
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
