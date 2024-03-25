import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/config/themes.dart';
import 'package:movies_app/features/home_freature/presentation/widgets/popular_movie_image_widget.dart';
import 'package:movies_app/features/home_freature/presentation/widgets/poster_movie_widget.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(children: [
      SizedBox(
        height: size.height * 0.38,
        child: Stack(
          children: [
            const PopularMovieImage(),
            const Positioned(
              top: 130,
              left: 30,
              child: PosterMovieWidget(),
            ),
            Positioned(
              bottom: 10,
              right: 20,
              width: size.width / 1.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Transformers",
                    style:
                        ApplicationThemeManager.mainTheme.textTheme.bodyLarge,
                    softWrap: true,
                    maxLines: 2,
                  ),
                  const Text(
                    "2019 PG-13 2h 7m.",
                    style: TextStyle(
                      height: 2,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ]

        /*CarouselSlider.builder(
        itemBuilder: (context, index, realIndex) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.height * 0.4,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/img/Image.png",
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 100,
                    left: 20,
                    child: Image.asset("assets/img/smallImage.png",
                        fit: BoxFit.cover),
                  ),
                  Positioned.directional(
                    width: 200,
                    textDirection: TextDirection.rtl,
                    bottom: 13,
                    start: 10,
                    child: Text(
                      "Dora And The Lost Cities. And Then!",
                      style:
                          ApplicationThemeManager.mainTheme.textTheme.bodyLarge,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        itemCount: 3,
        options: CarouselOptions(
          height: 400,
          viewportFraction: 1,
          // enlargeCenterPage: true,
          autoPlay: true,
        ),
      ),*/
        );
  }
}
