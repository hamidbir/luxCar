import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Car.dart';
import '../dataCar.dart';

part 'logocar_event.dart';
part 'logocar_state.dart';

class LogocarBloc extends Bloc<LogocarEvent, LogocarState> {
  @override
  LogocarState get initialState => LogocarInitial();

  @override
  Stream<LogocarState> mapEventToState(
    LogocarEvent event,
  ) async* {
    List<Car> mainCar = [];
    DataCar dc = DataCar();
    if(event is BenzEvent){
      mainCar.addAll(dc.getList(1));
      yield BenzStateLoaded(benz: mainCar);
    }
    else if(event is BmwEvent){
      mainCar.addAll(dc.getList(2));
      yield BmwStateLoaded(bmw: mainCar);
    }
    else if(event is RenoEvent){
      mainCar.addAll(dc.getList(14));
      yield RenoStateLoaded(reno: mainCar);
    }
    else if(event is JacEvent){
      mainCar.addAll(dc.getList(3));
      yield JacStateLoaded(jac: mainCar);
    }
    else if(event is GeelyEvent){
      mainCar.addAll(dc.getList(4));
      yield GeelyStateLoaded(geely: mainCar);
    }
    else if(event is SuzukiEvent){
      mainCar.addAll(dc.getList(5));
      yield SuzukiStateLoaded(suzuki: mainCar);
    }
    else if(event is LexusEvent){
      mainCar.addAll(dc.getList(6));
      yield LexusStateLoaded(lexus: mainCar);
    }
    else if(event is HaimaEvent){
      mainCar.addAll(dc.getList(7));
      yield HaimaStateLoaded(haima: mainCar);
    }
    else if(event is HyundaiEvent){
      mainCar.addAll(dc.getList(8));
      yield HyundaiStateLoaded(hyundai: mainCar);
    }
    else if(event is LifanEvent){
      mainCar.addAll(dc.getList(9));
      yield LifanStateLoaded(lifan: mainCar);
    }
    else if(event is MasaratiEvent){
      mainCar.addAll(dc.getList(10));
      yield MasaratiStateLoaded(masarati: mainCar);
    }
    else if(event is SsangyangEvent){
      mainCar.addAll(dc.getList(11));
      yield SsangyangStateLoaded(ssangyang: mainCar);
    }
    else if(event is MGEvent){
      mainCar.addAll(dc.getList(12));
      yield MGStateLoaded(mg: mainCar);
    }
    else if(event is ToyotaEvent){
      mainCar.addAll(dc.getList(13));
      yield ToyotaStateLoaded(toyota: mainCar);
    }
    
  }
}
