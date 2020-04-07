import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luxcar/bloc/logocar_bloc.dart';
import 'package:luxcar/page_two/Buttons.dart';

import '../Car.dart';
import 'BackPage.dart';
import 'showimagecar.dart';

class ListCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => LogocarBloc(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Car> main = [];
  Car car;
  void getListCar() {
    BlocBuilder<LogocarBloc, LogocarState>(builder: (_, state) {
      if (state is BenzStateLoaded)
        main.addAll(state.benz);
      else if (state is BmwStateLoaded)
        main.addAll(state.bmw);
      else if (state is RenoStateLoaded)
        main.addAll(state.reno);
      else if (state is JacStateLoaded)
        main.addAll(state.jac);
      else if (state is GeelyStateLoaded)
        main.addAll(state.geely);
      else if (state is SuzukiStateLoaded)
        main.addAll(state.suzuki);
      else if (state is LexusStateLoaded)
        main.addAll(state.lexus);
      else if (state is HaimaStateLoaded)
        main.addAll(state.haima);
      else if (state is HyundaiStateLoaded)
        main.addAll(state.hyundai);
      else if (state is LifanStateLoaded)
        main.addAll(state.lifan);
      else if (state is MasaratiStateLoaded)
        main.addAll(state.masarati);
      else if (state is SsangyangStateLoaded)
        main.addAll(state.ssangyang);
      else if (state is MGStateLoaded)
        main.addAll(state.mg);
      else if (state is ToyotaStateLoaded) main.addAll(state.toyota);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: BackPage(backPage: car.getColor() == null?main[0].getColor(): car.getColor()),
        child: Stack(
          children: <Widget>[
            ButtonsAndName(car: car== null? main[0] : car),
            ShowImageCar(image: car.getImage() == null ? main[0].getImage(): car.getImage()),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: main.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(8, 8),
                                blurRadius: 8,
                              )
                            ],
                            borderRadius: BorderRadius.circular(38),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                              car.setAll(main[index].name, main[index].image,
                                  main[index].color);
                              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MyApp()));
                              });
                            },
                            child: Card(
                                color: Colors.white,
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              width: 180,
                                              height: 120,
                                              child: Image.asset(
                                                  '${main[index].image}'))),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 4.0),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text('${main[index].name}'),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                        //CreateCard(),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
