import 'package:equatable/equatable.dart';
import 'package:musixmatch/domain/models/lyrics/lyrics_model.dart';

abstract class LyricsStates extends Equatable {}

class LyricsLoadingState extends LyricsStates {
  @override
  List<Object?> get props => [];
}

class LyricsLoadedState extends LyricsStates {
  final Lyrics lyricsData;

  LyricsLoadedState(this.lyricsData);
  @override
  List<Object?> get props => [lyricsData];
}

class LyricsErrorState extends LyricsStates {
  final String errorMsg;

  LyricsErrorState(this.errorMsg);
  @override
  List<Object?> get props => [errorMsg];
}
