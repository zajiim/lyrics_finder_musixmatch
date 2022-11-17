import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musixmatch/blocs/details/details_blocs.dart';
import 'package:musixmatch/blocs/details/details_events.dart';
import 'package:musixmatch/blocs/details/details_states.dart';
import 'package:musixmatch/blocs/lyrics/lyrics_blocs.dart';
import 'package:musixmatch/blocs/lyrics/lyrics_events.dart';
import 'package:musixmatch/blocs/lyrics/lyrics_states.dart';
import 'package:musixmatch/domain/models/details/details_repository.dart';
import 'package:musixmatch/domain/models/lyrics/lyrics_repository.dart';

import '../../constants/constants.dart';
// import '../lyrics/lyrics_screen.dart';

class DetailsScreen extends StatelessWidget {
  final String trackId;
  const DetailsScreen({
    super.key,
    required this.trackId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailsBloc(RepositoryProvider.of<DetailsRepository>(context))
            ..add(LoadTrackDetailsEvent(trackId)),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios_new,
              )),
          title: const Text("Track Details"),
        ),
        body: BlocBuilder<DetailsBloc, DetailsStates>(
          builder: (context, state) {
            if (state is DetailsErrorState) {
              return Center(
                child: Text(
                  state.errorMsg,
                  style: const TextStyle(
                    color: kFontColor,
                    fontSize: 32,
                  ),
                ),
              );
            } else if (state is DetailsLoadedState) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Track name: ${state.trackDetail.trackName}",
                        style: const TextStyle(
                          color: kFontColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Album Name: ${state.trackDetail.albumName}",
                        style: const TextStyle(
                          color: kFontColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Artist Name: ${state.trackDetail.artistName}",
                        style: const TextStyle(
                          color: kFontColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Track rating - ${state.trackDetail.trackRating}/100",
                        style: const TextStyle(
                          color: kFontColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Center(
                      //   child: ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //       backgroundColor: kCircleBarColor,
                      //     ),
                      //     onPressed: () {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) => LyricsScreen(
                      //             trackId: state.trackDetail.trackId.toString(),
                      //           ),
                      //         ),
                      //       );
                      //     },
                      //     child: const Text("Get Lyrics"),
                      //   ),
                      // ),

                      LoadLyricsWidget(
                        trackId: trackId,
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  color: kCircleBarColor,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class LoadLyricsWidget extends StatelessWidget {
  final String trackId;
  const LoadLyricsWidget({super.key, required this.trackId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LyricBloc(RepositoryProvider.of<LyricsRepository>(context))
            ..add(LoadLyricsEvent(trackId)),
      child: SizedBox(
        child: BlocBuilder<LyricBloc, LyricsStates>(
          builder: (context, state) {
            if (state is LyricsErrorState) {
              return Center(
                child: Text(
                  state.errorMsg,
                  style: const TextStyle(
                    color: kFontColor,
                    fontSize: 32,
                  ),
                ),
              );
            } else if (state is LyricsLoadedState) {
              return Text(
                state.lyricsData.lyricsBody,
                style: const TextStyle(
                  color: kFontColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  color: kCircleBarColor,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
