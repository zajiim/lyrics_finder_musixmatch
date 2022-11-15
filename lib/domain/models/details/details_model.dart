import 'package:freezed_annotation/freezed_annotation.dart';
part 'details_model.freezed.dart';
part 'details_model.g.dart';

@freezed
class DetailsModel with _$DetailsModel{
  const factory DetailsModel({
    required Message message,
  }) = _DetailsModel;

  factory DetailsModel.fromJson(Map<String, dynamic> json) => _$DetailsModelFromJson(json);
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
    required Track track,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Track with _$Track{
  const factory Track({
    @JsonKey(name: "track_id") required int trackId,
    @JsonKey(name: "track_name") required String trackName,
    @JsonKey(name: "track_rating") required int trackRating,
    @JsonKey(name: "explicit") required int explicit,
    @JsonKey(name: "album_name") required String albumName,
    @JsonKey(name: "artist_name") required String artistName,
   

  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
