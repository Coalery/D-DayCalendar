import 'package:d_day_calendar/dday_unit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[300],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(width, 100), bottomRight: Radius.elliptical(width, 100))
                  )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Swiper(
                        autoplay: true,
                        autoplayDelay: 3000,
                        viewportFraction: 0.8,
                        scale: 0.85,
                        itemCount: 5,
                        itemBuilder: (_, index) {
                          return DdayUnit();
                        },
                      )
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}