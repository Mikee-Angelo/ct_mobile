part of 'scan_bloc.dart';

abstract class ScanState extends Equatable {
  const ScanState();  

  @override
  List<Object> get props => [];
}
class ScanInitial extends ScanState {}
