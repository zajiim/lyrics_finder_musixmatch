// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingTracks _$TrendingTracksFromJson(Map<String, dynamic> json) {
  return _TrendingTracks.fromJson(json);
}

/// @nodoc
mixin _$TrendingTracks {
  Message get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingTracksCopyWith<TrendingTracks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingTracksCopyWith<$Res> {
  factory $TrendingTracksCopyWith(
          TrendingTracks value, $Res Function(TrendingTracks) then) =
      _$TrendingTracksCopyWithImpl<$Res, TrendingTracks>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$TrendingTracksCopyWithImpl<$Res, $Val extends TrendingTracks>
    implements $TrendingTracksCopyWith<$Res> {
  _$TrendingTracksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrendingTracksCopyWith<$Res>
    implements $TrendingTracksCopyWith<$Res> {
  factory _$$_TrendingTracksCopyWith(
          _$_TrendingTracks value, $Res Function(_$_TrendingTracks) then) =
      __$$_TrendingTracksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_TrendingTracksCopyWithImpl<$Res>
    extends _$TrendingTracksCopyWithImpl<$Res, _$_TrendingTracks>
    implements _$$_TrendingTracksCopyWith<$Res> {
  __$$_TrendingTracksCopyWithImpl(
      _$_TrendingTracks _value, $Res Function(_$_TrendingTracks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_TrendingTracks(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrendingTracks implements _TrendingTracks {
  const _$_TrendingTracks({required this.message});

  factory _$_TrendingTracks.fromJson(Map<String, dynamic> json) =>
      _$$_TrendingTracksFromJson(json);

  @override
  final Message message;

  @override
  String toString() {
    return 'TrendingTracks(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingTracks &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrendingTracksCopyWith<_$_TrendingTracks> get copyWith =>
      __$$_TrendingTracksCopyWithImpl<_$_TrendingTracks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrendingTracksToJson(
      this,
    );
  }
}

abstract class _TrendingTracks implements TrendingTracks {
  const factory _TrendingTracks({required final Message message}) =
      _$_TrendingTracks;

  factory _TrendingTracks.fromJson(Map<String, dynamic> json) =
      _$_TrendingTracks.fromJson;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$_TrendingTracksCopyWith<_$_TrendingTracks> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  Body get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({Body body});

  $BodyCopyWith<$Res> get body;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BodyCopyWith<$Res> get body {
    return $BodyCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Body body});

  @override
  $BodyCopyWith<$Res> get body;
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$_Message(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message({required this.body});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final Body body;

  @override
  String toString() {
    return 'Message(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message({required final Body body}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  Body get body;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  @JsonKey(name: "track_list")
  List<TrackList> get trackList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({@JsonKey(name: "track_list") List<TrackList> trackList});
}

/// @nodoc
class _$BodyCopyWithImpl<$Res, $Val extends Body>
    implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackList = null,
  }) {
    return _then(_value.copyWith(
      trackList: null == trackList
          ? _value.trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<TrackList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BodyCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$$_BodyCopyWith(_$_Body value, $Res Function(_$_Body) then) =
      __$$_BodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "track_list") List<TrackList> trackList});
}

/// @nodoc
class __$$_BodyCopyWithImpl<$Res> extends _$BodyCopyWithImpl<$Res, _$_Body>
    implements _$$_BodyCopyWith<$Res> {
  __$$_BodyCopyWithImpl(_$_Body _value, $Res Function(_$_Body) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackList = null,
  }) {
    return _then(_$_Body(
      trackList: null == trackList
          ? _value._trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<TrackList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Body implements _Body {
  const _$_Body(
      {@JsonKey(name: "track_list") required final List<TrackList> trackList})
      : _trackList = trackList;

  factory _$_Body.fromJson(Map<String, dynamic> json) => _$$_BodyFromJson(json);

  final List<TrackList> _trackList;
  @override
  @JsonKey(name: "track_list")
  List<TrackList> get trackList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackList);
  }

  @override
  String toString() {
    return 'Body(trackList: $trackList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Body &&
            const DeepCollectionEquality()
                .equals(other._trackList, _trackList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trackList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BodyCopyWith<_$_Body> get copyWith =>
      __$$_BodyCopyWithImpl<_$_Body>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BodyToJson(
      this,
    );
  }
}

abstract class _Body implements Body {
  const factory _Body(
      {@JsonKey(name: "track_list")
          required final List<TrackList> trackList}) = _$_Body;

  factory _Body.fromJson(Map<String, dynamic> json) = _$_Body.fromJson;

  @override
  @JsonKey(name: "track_list")
  List<TrackList> get trackList;
  @override
  @JsonKey(ignore: true)
  _$$_BodyCopyWith<_$_Body> get copyWith => throw _privateConstructorUsedError;
}

TrackList _$TrackListFromJson(Map<String, dynamic> json) {
  return _TrackList.fromJson(json);
}

/// @nodoc
mixin _$TrackList {
  Track get track => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackListCopyWith<TrackList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackListCopyWith<$Res> {
  factory $TrackListCopyWith(TrackList value, $Res Function(TrackList) then) =
      _$TrackListCopyWithImpl<$Res, TrackList>;
  @useResult
  $Res call({Track track});

  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class _$TrackListCopyWithImpl<$Res, $Val extends TrackList>
    implements $TrackListCopyWith<$Res> {
  _$TrackListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
  }) {
    return _then(_value.copyWith(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrackListCopyWith<$Res> implements $TrackListCopyWith<$Res> {
  factory _$$_TrackListCopyWith(
          _$_TrackList value, $Res Function(_$_TrackList) then) =
      __$$_TrackListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Track track});

  @override
  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$$_TrackListCopyWithImpl<$Res>
    extends _$TrackListCopyWithImpl<$Res, _$_TrackList>
    implements _$$_TrackListCopyWith<$Res> {
  __$$_TrackListCopyWithImpl(
      _$_TrackList _value, $Res Function(_$_TrackList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
  }) {
    return _then(_$_TrackList(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrackList implements _TrackList {
  const _$_TrackList({required this.track});

  factory _$_TrackList.fromJson(Map<String, dynamic> json) =>
      _$$_TrackListFromJson(json);

  @override
  final Track track;

  @override
  String toString() {
    return 'TrackList(track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackList &&
            (identical(other.track, track) || other.track == track));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, track);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackListCopyWith<_$_TrackList> get copyWith =>
      __$$_TrackListCopyWithImpl<_$_TrackList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackListToJson(
      this,
    );
  }
}

abstract class _TrackList implements TrackList {
  const factory _TrackList({required final Track track}) = _$_TrackList;

  factory _TrackList.fromJson(Map<String, dynamic> json) =
      _$_TrackList.fromJson;

  @override
  Track get track;
  @override
  @JsonKey(ignore: true)
  _$$_TrackListCopyWith<_$_TrackList> get copyWith =>
      throw _privateConstructorUsedError;
}

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
mixin _$Track {
  @JsonKey(name: "track_name")
  String get trackName => throw _privateConstructorUsedError;
  @JsonKey(name: "track_id")
  int get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: "album_name")
  String get albumName => throw _privateConstructorUsedError;
  @JsonKey(name: "has_lyrics")
  int get hasLyrics => throw _privateConstructorUsedError;
  @JsonKey(name: "artist_name")
  String get artistName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res, Track>;
  @useResult
  $Res call(
      {@JsonKey(name: "track_name") String trackName,
      @JsonKey(name: "track_id") int trackId,
      @JsonKey(name: "album_name") String albumName,
      @JsonKey(name: "has_lyrics") int hasLyrics,
      @JsonKey(name: "artist_name") String artistName});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res, $Val extends Track>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackName = null,
    Object? trackId = null,
    Object? albumName = null,
    Object? hasLyrics = null,
    Object? artistName = null,
  }) {
    return _then(_value.copyWith(
      trackName: null == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
      trackId: null == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      albumName: null == albumName
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String,
      hasLyrics: null == hasLyrics
          ? _value.hasLyrics
          : hasLyrics // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$_TrackCopyWith(_$_Track value, $Res Function(_$_Track) then) =
      __$$_TrackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "track_name") String trackName,
      @JsonKey(name: "track_id") int trackId,
      @JsonKey(name: "album_name") String albumName,
      @JsonKey(name: "has_lyrics") int hasLyrics,
      @JsonKey(name: "artist_name") String artistName});
}

/// @nodoc
class __$$_TrackCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res, _$_Track>
    implements _$$_TrackCopyWith<$Res> {
  __$$_TrackCopyWithImpl(_$_Track _value, $Res Function(_$_Track) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackName = null,
    Object? trackId = null,
    Object? albumName = null,
    Object? hasLyrics = null,
    Object? artistName = null,
  }) {
    return _then(_$_Track(
      trackName: null == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
      trackId: null == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      albumName: null == albumName
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String,
      hasLyrics: null == hasLyrics
          ? _value.hasLyrics
          : hasLyrics // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Track implements _Track {
  const _$_Track(
      {@JsonKey(name: "track_name") required this.trackName,
      @JsonKey(name: "track_id") required this.trackId,
      @JsonKey(name: "album_name") required this.albumName,
      @JsonKey(name: "has_lyrics") required this.hasLyrics,
      @JsonKey(name: "artist_name") required this.artistName});

  factory _$_Track.fromJson(Map<String, dynamic> json) =>
      _$$_TrackFromJson(json);

  @override
  @JsonKey(name: "track_name")
  final String trackName;
  @override
  @JsonKey(name: "track_id")
  final int trackId;
  @override
  @JsonKey(name: "album_name")
  final String albumName;
  @override
  @JsonKey(name: "has_lyrics")
  final int hasLyrics;
  @override
  @JsonKey(name: "artist_name")
  final String artistName;

  @override
  String toString() {
    return 'Track(trackName: $trackName, trackId: $trackId, albumName: $albumName, hasLyrics: $hasLyrics, artistName: $artistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Track &&
            (identical(other.trackName, trackName) ||
                other.trackName == trackName) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.albumName, albumName) ||
                other.albumName == albumName) &&
            (identical(other.hasLyrics, hasLyrics) ||
                other.hasLyrics == hasLyrics) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, trackName, trackId, albumName, hasLyrics, artistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackCopyWith<_$_Track> get copyWith =>
      __$$_TrackCopyWithImpl<_$_Track>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackToJson(
      this,
    );
  }
}

abstract class _Track implements Track {
  const factory _Track(
          {@JsonKey(name: "track_name") required final String trackName,
          @JsonKey(name: "track_id") required final int trackId,
          @JsonKey(name: "album_name") required final String albumName,
          @JsonKey(name: "has_lyrics") required final int hasLyrics,
          @JsonKey(name: "artist_name") required final String artistName}) =
      _$_Track;

  factory _Track.fromJson(Map<String, dynamic> json) = _$_Track.fromJson;

  @override
  @JsonKey(name: "track_name")
  String get trackName;
  @override
  @JsonKey(name: "track_id")
  int get trackId;
  @override
  @JsonKey(name: "album_name")
  String get albumName;
  @override
  @JsonKey(name: "has_lyrics")
  int get hasLyrics;
  @override
  @JsonKey(name: "artist_name")
  String get artistName;
  @override
  @JsonKey(ignore: true)
  _$$_TrackCopyWith<_$_Track> get copyWith =>
      throw _privateConstructorUsedError;
}
