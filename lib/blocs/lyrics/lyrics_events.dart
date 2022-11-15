import 'package:equatable/equatable.dart';

abstract class LyricsEvent extends Equatable {}

class LoadLyricsEvent extends LyricsEvent {
  final String trackId;

  LoadLyricsEvent(this.trackId);
  @override
  List<Object?> get props => [trackId];
}
