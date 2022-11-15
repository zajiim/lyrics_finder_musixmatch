import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:musixmatch/constants/credentials.dart';
import 'package:musixmatch/domain/models/lyrics/lyrics_model.dart';

class LyricsRepository {
  Future<Lyrics> getLyrics(String trackId) async {
    final response = await Dio(BaseOptions()).get(
        "https://api.musixmatch.com/ws/1.1/track.lyrics.get?track_id=$trackId&apikey=$apiKey");
    if (response.statusCode == 200) {
      final Map<String, dynamic> parsedLyricJsonResult =
          jsonDecode(response.data);
      final lyrics = parsedLyricJsonResult['message']['body']['lyrics'];
      return Lyrics.fromJson(lyrics);
    } else {
      throw Exception("Some error occured");
    }
  }
}
