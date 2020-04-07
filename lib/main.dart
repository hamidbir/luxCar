import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Car.dart';
import 'bloc/logocar_bloc.dart';
import 'page_two/ListCar.dart';

void main() {
  runApp(LuxCar());
}

class LuxCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LuxCar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'kamran',
      ),
      home: BlocProvider(
        create: (context) => LogocarBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Car> logoCar = [
    Car(name: 'بنز', image: 'assets/logo/Benz.png'),
    Car(name: 'بی ام و', image: 'assets/logo/bmw.png'),
    Car(name: 'رنو', image: 'assets/logo/reno.png'),
    Car(name: 'جک', image: 'assets/logo/Jac.png'),
    Car(name: 'جیلی', image: 'assets/logo/geely.png'),
    Car(name: 'سوزوکی', image: 'assets/logo/suzuki.png'),
    Car(name: 'لکسوس', image: 'assets/logo/lexus1.png'),
    Car(name: 'هایما', image: 'assets/logo/Haima.png'),
    Car(name: 'هیوندا', image: 'assets/logo/hyundai.png'),
    Car(name: 'لیفان', image: 'assets/logo/lifan.png'),
    Car(name: 'مازاراتی', image: 'assets/logo/masarati.png'),
    Car(name: 'سانگ یانگ', image: 'assets/logo/Ssangyong.png'),
    Car(name: 'ام جی', image: 'assets/logo/MG1.png'),
    Car(name: 'تویوتا', image: 'assets/logo/toyota.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Lux Car',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding:
              EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 15.0,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(BenzEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[0].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[0].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(BmwEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[1].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[1].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(RenoEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[2].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[2].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(JacEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[3].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[3].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(GeelyEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[4].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[4].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(SuzukiEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[5].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[5].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(LexusEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[6].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[6].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(HaimaEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[7].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[7].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(HyundaiEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[8].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[8].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(LifanEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[9].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[9].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(MasaratiEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[10].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[10].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(SsangyangEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[11].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[11].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(MGEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[12].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[12].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<LogocarBloc>(context).add(ToyotaEvent());
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=> ListCar()));
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset(logoCar[13].image)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(logoCar[13].name, style: TextStyle(fontSize: 38)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        );
  }
}
