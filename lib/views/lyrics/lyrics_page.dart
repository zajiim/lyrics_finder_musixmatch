import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musixmatch/blocs/lyrics/lyrics_blocs.dart';
import 'package:musixmatch/blocs/lyrics/lyrics_events.dart';
import 'package:musixmatch/blocs/lyrics/lyrics_states.dart';
import 'package:musixmatch/domain/models/lyrics/lyrics_repository.dart';

import '../../constants/constants.dart';

class LyricsPage extends StatelessWidget {
  final String trackId;
  const LyricsPage({
    super.key,
    required this.trackId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LyricBloc(RepositoryProvider.of<LyricsRepository>(context))
            ..add(LoadLyricsEvent(trackId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Lyrics",
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
        body: BlocBuilder<LyricBloc, LyricsStates>(
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
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      state.lyricsData.lyricsBody,
                      style: const TextStyle(
                        color: kFontColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
