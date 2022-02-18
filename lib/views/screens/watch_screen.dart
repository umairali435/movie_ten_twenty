import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/arguments/movie_details_arguments.dart';
import 'package:movies_app/constants/constants.dart';
import 'package:movies_app/constants/padding.dart';
import 'package:movies_app/constants/size.dart';
import 'package:movies_app/models/upcomming_movies.dart';
import 'package:movies_app/networking/api_endpoints.dart';
import 'package:movies_app/providers/allproviders.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:movies_app/routes/app_router.dart';
import 'package:movies_app/routes/app_routes.dart';
import 'package:movies_app/widgets/custom_network_image.dart';

class WatchScreen extends HookConsumerWidget {
  WatchScreen();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movie = ref.watch(moviesFuture);
    return Scaffold(
      appBar: AppBar(
        title: AppBarTextField(),
      ),
      body: movie.when(
        data: (movies) {
          return ListView.builder(
              itemCount: movies.results.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: ConstPadding.padding8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          InkWell(
                            onTap: () {
                              ref
                                  .read(selectedMovieProvider.state)
                                  .update((state) => movies.results[index].id);
                              AppRouter.pushNamed(Routes.watchdetailsRoute);
                            },
                            child: CustomNetworkImage(
                                height: size.convert(context, 280),
                                fit: BoxFit.fill,
                                imageUrl: ApiEndPoint.imageUrl +
                                    movies.results[index].poster_path
                                        .toString()),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.red,
                                gradient: Constants.blackOverlayGradient),
                            child: Padding(
                              padding: ConstPadding.padding8,
                              child: Text(
                                movies.results[index].title.toString(),
                                style: TextStyle(
                                  fontSize: size.convert(context, 20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              });
        },
        error: (err, r) => Container(),
        loading: () => Container(),
      ),
    );
  }
}

class AppBarTextField extends HookConsumerWidget {
  const AppBarTextField();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'watch',
          style: TextStyle(color: Constants.black, fontSize: 16),
        ),
        IconButton(
          onPressed: () {
            AppRouter.pushNamed(Routes.watchsearchRoute);
          },
          icon: Icon(
            Icons.search,
            size: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
