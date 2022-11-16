import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musixmatch/blocs/lyrics/lyrics_events.dart';
import 'package:musixmatch/blocs/lyrics/lyrics_states.dart';
import 'package:musixmatch/domain/models/lyrics/lyrics_repository.dart';

class LyricBloc extends Bloc<LyricsEvent, LyricsStates> {
  final LyricsRepository _lyricsRepository;

  LyricBloc(this._lyricsRepository) : super(LyricsLoadingState()) {
    on<LoadLyricsEvent>((event, emit) async {
      emit(LyricsLoadingState());

      try {
        final lyricsData = await _lyricsRepository.getLyrics(event.trackId);
        emit(LyricsLoadedState(lyricsData));
      } catch (e) {
        emit(LyricsErrorState("No internet connection"));
      }
    });
  }
}
