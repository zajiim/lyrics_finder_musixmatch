import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musixmatch/blocs/details/details_events.dart';
import 'package:musixmatch/blocs/details/details_states.dart';

import 'package:musixmatch/domain/models/details/details_repository.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsStates> {
  final DetailsRepository _detailsRepository;

  DetailsBloc(
    this._detailsRepository,
  ) : super(DetailsLoadingState()) {
    on<LoadTrackDetailsEvent>((event, emit) async {
      emit(DetailsLoadingState());

      try {
        final trackDetail =
            await _detailsRepository.getTrackDetails(event.trackId);
        emit(DetailsLoadedState(trackDetail));
      } catch (e) {
        log(e.toString());
        emit(DetailsErrorState(e.toString()));
      }
    });
  }
}
