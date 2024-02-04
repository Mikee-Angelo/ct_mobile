part of 'scan_bloc.dart';

abstract class ScanEvent extends Equatable {
  const ScanEvent();

  @override
  List<Object> get props => [];
}

class OnScan extends ScanEvent {
  const OnScan(this.code);
  final String code;

  @override
  List<Object> get props => [code];
}
