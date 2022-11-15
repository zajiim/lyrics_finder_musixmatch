import 'package:equatable/equatable.dart';

import '../../domain/models/details/details_model.dart';


abstract class DetailsStates extends Equatable {}

class DetailsLoadingState extends DetailsStates {
  @override
  List<Object?> get props => [];
}

class DetailsLoadedState extends DetailsStates {
  final Track trackDetail;

  DetailsLoadedState(this.trackDetail);
  @override
  List<Object?> get props => [trackDetail];
}

class DetailsErrorState extends DetailsStates {
  final String errorMsg;

  DetailsErrorState(this.errorMsg);
  @override
  List<Object?> get props => [errorMsg];
}
