import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musixmatch/blocs/home/home_blocs.dart';
import 'package:musixmatch/blocs/home/home_states.dart';
import 'package:musixmatch/domain/models/home/home_repository.dart';

import '../../blocs/home/home_events.dart';
import '../../constants/constants.dart';
import '../details/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenDimension = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>
          HomeBloc(RepositoryProvider.of<HomeRepository>(context))
            ..add(LoadTrendingMusicEvent()),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
              ),
            ),
          ],
          title: const Text(
            "Music Player",
            style: TextStyle(
              color: kFontColor,
              fontSize: 32,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              k10Height,
              Row(
                children: const [
                  Icon(
                    Icons.explore,
                    color: kFontColor,
                  ),
                  k5Width,
                  Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 24,
                      color: kFontColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kFontColor,
                  ),
                ],
              ),
              k10Height,
              k10Height,
              const Text(
                "Quick Picks",
                style: TextStyle(
                  color: kFontColor,
                  fontSize: 24,
                ),
              ),
              k10Height,
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is HomeErrorState) {
                    return Center(
                      child: Text(
                        state.errorMsg,
                        style: const TextStyle(
                          color: kFontColor,
                          fontSize: 32,
                        ),
                      ),
                    );
                  } else if (state is HomeLoadedState) {
                    return SizedBox(
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => k10Height,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return DetailsScreen(
                                      trackId: state
                                          .trendingList[index].track.trackId.toString());
                                })));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kItemBGColor.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(
                                    16,
                                  ),
                                ),
                                width: double.infinity,
                                height: 80,
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        bottomLeft: Radius.circular(16),
                                      ),
                                      child: Image.network(
                                        "https://cdn.dribbble.com/users/3275229/screenshots/15196775/musixmatch.png",
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 60,
                                      ),
                                    ),
                                    k10Width,
                                    SizedBox(
                                      width: screenDimension.width * .65,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            state.trendingList[index].track
                                                .trackName,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color: kFontColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            state.trendingList[index].track
                                                .artistName,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color: kFontColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            state.trendingList[index].track
                                                .albumName,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color: kFontColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      color: kFontColor,
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                          itemCount: state.trendingList.length),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
