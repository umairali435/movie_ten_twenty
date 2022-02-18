import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/constants/constants.dart';
import 'package:movies_app/constants/padding.dart';
import 'package:movies_app/constants/size.dart';
import 'package:movies_app/networking/api_endpoints.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:movies_app/routes/app_router.dart';
import 'package:movies_app/routes/app_routes.dart';
import 'package:movies_app/widgets/custom_network_image.dart';
import 'package:flutter/cupertino.dart';

class SearchPage extends HookConsumerWidget {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchMovie = ref
        .watch(moviesbySearch(controller.text == '' ? 'a' : controller.text));
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          width: size.convertWidth(context, 354),
          height: size.convert(context, 52),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Constants.textWhiteColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: TextField(
            onChanged: (d) {
              ref.watch(moviesbySearch(controller.text));
            },
            controller: controller,
            style: TextStyle(color: Constants.black),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  AppRouter.pop();
                },
                icon: Icon(
                  Icons.close,
                  size: 18,
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 18,
              ),
              border: InputBorder.none,
              hintText: 'Search',
            ),
          ),
        ),
      ),
      body: searchMovie.when(
        data: (movies) {
          return ListView.builder(
              itemCount: movies.results.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: ConstPadding.padding8,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: ConstPadding.padding8,
                            child: InkWell(
                              onTap: () {
                                ref.read(selectedMovieProvider.state).update(
                                    (state) => movies.results[index].id);
                                AppRouter.pushNamed(Routes.watchdetailsRoute);
                              },
                              child: Container(
                                width: size.convertWidth(context, 130),
                                height: size.convert(context, 100),
                                child: movies.results[index].poster_path == null
                                    ? Text('no image')
                                    : CustomNetworkImage(
                                        height: size.convert(context, 280),
                                        fit: BoxFit.fill,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        imageUrl: ApiEndPoint.imageUrl +
                                            movies.results[index].poster_path
                                                .toString()),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movies.results[index].title.toString(),
                                  style: TextStyle(
                                    color: Constants.black,
                                    fontSize: size.convert(context, 16),
                                  ),
                                ),
                                Text(
                                  movies.results[index].release_date.toString(),
                                  style: TextStyle(
                                    color: Constants.grey,
                                    fontSize: size.convert(context, 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: Constants.blue,
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
        loading: () => Center(
            child: CircularProgressIndicator(
          color: Constants.blue,
        )),
      ),
    );
  }
}
