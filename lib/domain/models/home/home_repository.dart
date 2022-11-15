import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:musixmatch/constants/constants.dart';
import 'package:musixmatch/domain/models/home/home_model.dart';

import '../../../constants/credentials.dart';

class HomeRepository {
  Future<List<TrackList>> getTrendingTracks() async {
    final response = await Dio(BaseOptions())
        .get("$kBaseUrl/chart.tracks.get?apikey=$apiKey");

    if (response.statusCode == 200) {
      final Map<String, dynamic> parsedJson = jsonDecode(response.data);
      final trendingMusicList =
          (parsedJson["message"]["body"]["track_list"] as List)
              .map((e) => TrackList.fromJson(e))
              .toList();
      return trendingMusicList;
    } else {
      throw Exception("No internet connection");
    }
  }
}
