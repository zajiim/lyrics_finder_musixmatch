import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:musixmatch/constants/credentials.dart';
import 'package:musixmatch/domain/models/details/details_model.dart';

class DetailsRepository {
  Future<Track> getTrackDetails(String trackId) async {
    final response = await Dio(BaseOptions()).get(
        "https://api.musixmatch.com/ws/1.1/track.get?track_id=$trackId&apikey=$apiKey");

    if (response.statusCode == 200) {
      final Map<String, dynamic> parsedJson = jsonDecode(response.data);
      print("Parsed JSON" + parsedJson.toString());
      final trackDetails = parsedJson['message']['body']['track'];

      return Track.fromJson(trackDetails);
    } else {
      throw Exception("No internet connection");
    }
  }
}
