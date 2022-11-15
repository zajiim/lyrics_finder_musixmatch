import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_model.g.dart';
part 'home_model.freezed.dart';

@freezed
class TrendingTracks with _$TrendingTracks{
  const factory TrendingTracks({
    required Message message,
  }) = _TrendingTracks;

  factory TrendingTracks.fromJson(Map<String, dynamic> json) => _$TrendingTracksFromJson(json);
}

@freezed
class Message with _$Message{
  const factory Message({
    required Body body,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@freezed
class Body with _$Body{
  const factory Body({
    @JsonKey(name: "track_list") required List<TrackList> trackList,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class TrackList with _$TrackList{
  const factory TrackList({
    required Track track,
  }) = _TrackList;

  factory TrackList.fromJson(Map<String, dynamic> json) => _$TrackListFromJson(json);
}

@freezed
class Track with _$Track{
  const factory Track({
    @JsonKey(name: "track_name") required String trackName,
    @JsonKey(name: "track_id") required int trackId,
    @JsonKey(name: "album_name") required String albumName,
    @JsonKey(name: "has_lyrics") required int hasLyrics,
    @JsonKey(name: "artist_name") required String artistName,
   
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}