// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyrics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LyricsModel _$$_LyricsModelFromJson(Map<String, dynamic> json) =>
    _$_LyricsModel(
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LyricsModelToJson(_$_LyricsModel instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      body: Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'body': instance.body,
    };

_$_Body _$$_BodyFromJson(Map<String, dynamic> json) => _$_Body(
      lyrics: Lyrics.fromJson(json['lyrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BodyToJson(_$_Body instance) => <String, dynamic>{
      'lyrics': instance.lyrics,
    };

_$_Lyrics _$$_LyricsFromJson(Map<String, dynamic> json) => _$_Lyrics(
      lyricsBody: json['lyrics_body'] as String,
    );

Map<String, dynamic> _$$_LyricsToJson(_$_Lyrics instance) => <String, dynamic>{
      'lyrics_body': instance.lyricsBody,
    };
