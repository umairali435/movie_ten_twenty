import 'dart:developer' as log;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/arguments/movie_details_arguments.dart';
import 'package:movies_app/constants/constants.dart';
import 'package:movies_app/constants/padding.dart';
import 'package:movies_app/constants/size.dart';
import 'package:movies_app/networking/api_endpoints.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:movies_app/routes/app_router.dart';
import 'package:movies_app/routes/app_routes.dart';
import 'package:movies_app/widgets/common/custom_button.dart';
import 'package:movies_app/widgets/custom_network_image.dart';

class DetailsScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieid = ref.watch(selectedMovieProvider);
    final movieDetails = ref.watch(moviesDetailsFuture(movieid!));
    List<Color> colors = [
      Color(0xffCD9D0F),
      Color(0xff564CA3),
      Color(0xffE26CA5),
      Color(0xff15D2BC)
    ];
    Random random = Random();
    return Scaffold(
      body: movieDetails.when(
        data: (movie) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 350.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomNetworkImage(
                          fit: BoxFit.fill,
                          borderRadius: BorderRadius.circular(0.0),
                          imageUrl: ApiEndPoint.imageUrl +
                              movie.poster_path.toString()),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "In Theaters " + movie.release_date.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.9,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomTextButton(
                            width: size.convertWidth(context, 243),
                            height: size.convert(context, 50),
                            child: Center(
                                child: Text(
                              'Get Tickets',
                              style: TextStyle(
                                  letterSpacing: 0.9,
                                  color: Constants.whiteColor,
                                  fontWeight: FontWeight.bold),
                            )),
                            onPressed: () {},
                            color: Constants.blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextButton.outlined(
                            border: Border.all(color: Constants.blue),
                            width: size.convertWidth(context, 243),
                            height: size.convert(context, 50),
                            child: Center(
                                child: Text(
                              'Watch Trailer',
                              style: TextStyle(
                                  letterSpacing: 0.9,
                                  color: Constants.whiteColor,
                                  fontWeight: FontWeight.bold),
                            )),
                            onPressed: () {
                              if (movie.videos!.results!.isNotEmpty) {
                                AppRouter.pushNamed(Routes.watchtrailerRoute);
                                ref.read(selectedUrlProvider.state).update(
                                    (state) => movie.videos!.results![0].key);
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: ConstPadding.padding16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Genres',
                        style: TextStyle(
                          fontSize: size.convert(context, 16),
                          color: Constants.black,
                        ),
                      ),
                      Wrap(
                        children: movie.genres!
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Transform(
                                    transform: Matrix4.identity()..scale(0.8),
                                    child: Chip(
                                      label: Text(e.name!),
                                      backgroundColor:
                                          colors[random.nextInt(4)],
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                      Divider(
                        thickness: 0.2,
                        color: Constants.grey,
                      ),
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: size.convert(context, 16),
                          color: Constants.black,
                        ),
                      ),
                      Text(
                        movie.overview!,
                        style: TextStyle(
                          fontSize: size.convert(context, 12),
                          color: Constants.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
            ],
          );
        },
        error: (err, r) => Container(),
        loading: () => Center(
            child: CircularProgressIndicator(
          color: Constants.blue,
        )),
      ),
    );
  }
}
