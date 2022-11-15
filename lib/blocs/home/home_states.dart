import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:musixmatch/domain/models/home/home_model.dart';

@immutable
abstract class HomeState extends Equatable {}

//trendingList loading state
class HomeLoadingState extends HomeState {
  @override
  List<Object?> get props => [];
}

//trendingList loaded state

class HomeLoadedState extends HomeState {
  HomeLoadedState(this.trendingList);
  final List<TrackList> trendingList;
  @override
  List<Object?> get props => [trendingList];
}


//error loading state

class HomeErrorState extends HomeState {
  HomeErrorState(this.errorMsg);
  final String errorMsg;
  @override
  List<Object?> get props => [errorMsg];
}