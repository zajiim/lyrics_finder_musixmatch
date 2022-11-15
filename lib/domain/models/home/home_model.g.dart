// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrendingTracks _$$_TrendingTracksFromJson(Map<String, dynamic> json) =>
    _$_TrendingTracks(
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TrendingTracksToJson(_$_TrendingTracks instance) =>
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
      trackList: (json['track_list'] as List<dynamic>)
          .map((e) => TrackList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BodyToJson(_$_Body instance) => <String, dynamic>{
      'track_list': instance.trackList,
    };

_$_TrackList _$$_TrackListFromJson(Map<String, dynamic> json) => _$_TrackList(
      track: Track.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TrackListToJson(_$_TrackList instance) =>
    <String, dynamic>{
      'track': instance.track,
    };

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => _$_Track(
      trackName: json['track_name'] as String,
      trackId: json['track_id'] as int,
      albumName: json['album_name'] as String,
      hasLyrics: json['has_lyrics'] as int,
      artistName: json['artist_name'] as String,
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'track_name': instance.trackName,
      'track_id': instance.trackId,
      'album_name': instance.albumName,
      'has_lyrics': instance.hasLyrics,
      'artist_name': instance.artistName,
    };
