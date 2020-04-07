part of 'logocar_bloc.dart';

@immutable
abstract class LogocarEvent {
  const LogocarEvent();
}

class BenzEvent extends LogocarEvent {}

class BmwEvent extends LogocarEvent {}

class RenoEvent extends LogocarEvent {}

class JacEvent extends LogocarEvent {}

class GeelyEvent extends LogocarEvent {}

class SuzukiEvent extends LogocarEvent {}

class LexusEvent extends LogocarEvent {}

class HaimaEvent extends LogocarEvent {}

class HyundaiEvent extends LogocarEvent {}

class LifanEvent extends LogocarEvent {}

class MasaratiEvent extends LogocarEvent {}

class SsangyangEvent extends LogocarEvent {}

class MGEvent extends LogocarEvent {}

class ToyotaEvent extends LogocarEvent {}
