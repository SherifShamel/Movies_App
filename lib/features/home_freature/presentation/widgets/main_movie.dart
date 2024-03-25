import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/config/constants.dart';
import 'package:movies_app/config/themes.dart';
import 'package:movies_app/features/home_freature/data/home_api_service.dart';

class MainMovie extends StatelessWidget {
  const MainMovie({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    PopularMovieApi.fetchPopularMovie().then((value) {
      for (var e in value) {
        print("${Constants.imageBaseUrl}${e.backdropPath}");
      }
    });
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: size.height * 0.4,
            child: Stack(
              children: [
                FutureBuilder(
                  future: PopularMovieApi.fetchPopularMovie(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Center(
                        child: Text("Error"),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Image.network(
                        "${Constants.imageBaseUrl}${snapshot.data?[index].backdropPath}",
                    fit: BoxFit.cover,);
                  },
                ),
                Positioned(
                    top: 170,
                    left: 20,
                    child: FutureBuilder(
                      future: PopularMovieApi.fetchPopularMovie(),
                      builder: (context, snapshot) {
                        return SizedBox(
                          width: 100,
                          child: Image.network(
                            "${Constants.imageBaseUrl}${snapshot.data?[index].posterPath}",
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    )

                    /*FutureBuilder(
                    future: PopularMovieApi.fetchPopularMovie(),
                    builder: (context, snapshot) => Image.asset("${Constants.imageBaseUrl}${snapshot.data?[index].backdropPath}",
                        fit: BoxFit.cover),
                  ),*/
                    ),
                Positioned.directional(
                  width: 200,
                  textDirection: TextDirection.rtl,
                  bottom: 13,
                  start: 10,
                  child: Text(
                    "X Men: Back To The Future",
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
    );
  }

/*FutureBuilder(
      future: PopularMovieApi.fetchPopularMovie(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text("Error"),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        var ressultsList = snapshot.data ?? [];
        return ListView.builder(
          itemBuilder: (context, index) => Text(
            ressultsList[index].backdropPath,
            style: const TextStyle(
              color: ApplicationThemeManager.primaryColor,
            ),
          ),
          itemCount: ressultsList.length,
        );
      }*/
}
