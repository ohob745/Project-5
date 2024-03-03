import 'package:clone_app_amc/component/book_mark.dart';
import 'package:clone_app_amc/database/model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RowLocation extends StatelessWidget {
  const RowLocation({
    super.key,
    required this.location,
  });
  final Locations location;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [                          
        Column(
          children: [
            Text(location.title,
                style: TextStyle(fontSize: 15, color: Colors.white)),
            SizedBox(
              height: 30,
            ),
            Text(location.subtitle,
                style: TextStyle(fontSize: 10, color: Colors.white)),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: const Text(
                      "أوقات العرض",
                      style: TextStyle(color: Colors.black),
                    )),
                ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri.parse(location.googleMapLink);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url, mode: LaunchMode.inAppWebView);
                    } else {
                      print('Could not launch $url');
                    }
                  },
                  style: ButtonStyle(
                    side: const MaterialStatePropertyAll(
                        BorderSide(color: Colors.white, width: 2)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: const Text(
                    style: TextStyle(color: Colors.white),
                    "إرشادات الوصول",
                  ),
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Stars(
              location: location,
            )
          ],
        ),
      SizedBox(height: 20,)],
    );
  }
}
