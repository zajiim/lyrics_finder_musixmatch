import 'package:equatable/equatable.dart';

abstract class DetailsEvent extends Equatable {}

class LoadTrackDetailsEvent extends DetailsEvent {
  final String trackId;

  LoadTrackDetailsEvent(this.trackId);
  @override
  List<Object?> get props => [trackId];
}
