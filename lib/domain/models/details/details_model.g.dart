// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailsModel _$$_DetailsModelFromJson(Map<String, dynamic> json) =>
    _$_DetailsModel(
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailsModelToJson(_$_DetailsModel instance) =>
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
      track: Track.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BodyToJson(_$_Body instance) => <String, dynamic>{
      'track': instance.track,
    };

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => _$_Track(
      trackId: json['track_id'] as int,
      trackName: json['track_name'] as String,
      trackRating: json['track_rating'] as int,
      explicit: json['explicit'] as int,
      albumName: json['album_name'] as String,
      artistName: json['artist_name'] as String,
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'track_id': instance.trackId,
      'track_name': instance.trackName,
      'track_rating': instance.trackRating,
      'explicit': instance.explicit,
      'album_name': instance.albumName,
      'artist_name': instance.artistName,
    };
