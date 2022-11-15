import 'package:freezed_annotation/freezed_annotation.dart';
part 'lyrics_model.freezed.dart';
part 'lyrics_model.g.dart';


@freezed
class LyricsModel with _$LyricsModel{
  const factory LyricsModel({
    required Message message,
  }) = _LyricsModel;

  factory LyricsModel.fromJson(Map<String, dynamic> json) => _$LyricsModelFromJson(json);
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
    required Lyrics lyrics,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Lyrics with _$Lyrics{
  const factory Lyrics({
    @JsonKey(name: "lyrics_body") required String lyricsBody,
  }) = _Lyrics;

  factory Lyrics.fromJson(Map<String, dynamic> json) => _$LyricsFromJson(json);
}