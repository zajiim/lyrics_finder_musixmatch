import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musixmatch/blocs/home/home_events.dart';
import 'package:musixmatch/blocs/home/home_states.dart';
import 'package:musixmatch/domain/models/home/home_repository.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc(this._homeRepository) : super(HomeLoadingState()) {
    on<LoadTrendingMusicEvent>((event, emit) async {
      emit(HomeLoadingState());

      try {
        final trendingList = await _homeRepository.getTrendingTracks();
        emit(HomeLoadedState(trendingList));
      } catch (e) {
        log(e.toString());
        emit(HomeErrorState("No internet connection"));
      }
    });
  }
}
