part of 'logocar_bloc.dart';

@immutable
abstract class LogocarState {}

class LogocarInitial extends LogocarState {}

class BenzStateLoaded extends LogocarState {
 final List<Car> benz ;
 BenzStateLoaded({@required this.benz});
}

class BmwStateLoaded extends LogocarState {
  final List<Car> bmw ;
  BmwStateLoaded({ @required this.bmw});
}

class RenoStateLoaded extends LogocarState {
  final List<Car> reno;
  RenoStateLoaded({@required this.reno});
}

class JacStateLoaded extends LogocarState {
  final List<Car> jac;
  JacStateLoaded({@required this.jac});
}

class GeelyStateLoaded extends LogocarState {
  final List<Car> geely;
  GeelyStateLoaded({@required this.geely});
}

class SuzukiStateLoaded extends LogocarState {
  final List<Car> suzuki;
  SuzukiStateLoaded({@required this.suzuki});
}

class LexusStateLoaded extends LogocarState {
  final List<Car> lexus;
  LexusStateLoaded({@required this.lexus});
}

class HaimaStateLoaded extends LogocarState {
  final List<Car> haima;
  HaimaStateLoaded({@required this.haima});
}

class HyundaiStateLoaded extends LogocarState {
  final List<Car> hyundai;
  HyundaiStateLoaded({@required this.hyundai});
}

class LifanStateLoaded extends LogocarState {
  final List<Car> lifan;
  LifanStateLoaded({@required this.lifan});
}

class MasaratiStateLoaded extends LogocarState {
  final List<Car> masarati;
  MasaratiStateLoaded({@required this.masarati});
}

class SsangyangStateLoaded extends LogocarState {
  final List<Car> ssangyang;
  SsangyangStateLoaded({@required this.ssangyang});
}

class MGStateLoaded extends LogocarState {
  final List<Car> mg;
  MGStateLoaded({@required this.mg});
}

class ToyotaStateLoaded extends LogocarState {
  final List<Car> toyota;
  ToyotaStateLoaded({@required this.toyota});
}
