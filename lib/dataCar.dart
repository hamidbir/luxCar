import 'package:flutter/material.dart';

import 'Car.dart';

class DataCar{

List<Car> benzList = [];
List<Car> bmwList = [];
List<Car> renoList = [];
List<Car> jacList = [];
List<Car> geelyList = [];
List<Car> suzukiList = [];
List<Car> lexusList = [];
List<Car> haimaList = [];
List<Car> hyundaiList = [];
List<Car> lifanList = [];
List<Car> masaratiList = [];
List<Car> ssangyangList = [];
List<Car> mgList = [];
List<Car> toyotaList = [];
List<Color> color = [Colors.red,Colors.yellow,Colors.green, Colors.black,Colors.blue,Colors.purple,Colors.teal,Colors.amber,Colors.grey,Colors.indigo];

DataCar(){
  for(int i = 1 ; i <=10 ; i++){
    benzList.add(Car(name:'بنز $i',image: 'image', color: color[i]));
    bmwList.add(Car(name:'بی ام و $i',image: 'image',color:color[i]));
    renoList.add(Car(name:'رنو $i',image: 'image', color:color[i]));
    jacList.add(Car(name:'جک $i',image: 'image',color: color[i]));
    geelyList.add(Car(name:'جیلی $i',image: 'image', color: color[i]));
    suzukiList.add(Car(name:'سوزوکی $i',image: 'image', color: color[i]));
    lexusList.add(Car(name:'لکسوس $i',image: 'image', color: color[i]));
    haimaList.add(Car(name:'هایما$i',image: 'image', color:color[i]));
    hyundaiList.add(Car(name:'هیوندا$i',image: 'image', color: color[i]));
    lifanList.add(Car(name:'لیفان$i',image: 'image',color: color[i]));
    masaratiList.add(Car(name:'مازاراتی$i',image: 'image', color: color[i]));
    ssangyangList.add(Car(name:'سانگ یانگ$i',image: 'image', color: color[i]));
    mgList.add(Car(name:'ام جی$i',image: 'image', color: color[i]));
    toyotaList.add(Car(name:'تویوتا$i',image: 'image',color: color[i]));
  } 

}
  List<Car> getList(int i){
    switch(i){
      case 1:
      return benzList;
      case 2:
      return bmwList;
      case 3:
      return jacList;
      case 4:
      return geelyList;
      case 5:
      return suzukiList;
      case 6:
      return lexusList;
      case 7:
      return haimaList;
      case 8:
      return hyundaiList;
      case 9:
      return lifanList;
      case 10:
      return masaratiList;
      case 11:
      return ssangyangList;
      case 12:
      return mgList;
      case 13:
      return toyotaList;
      case 14:
      return renoList;
      default: return null;
    }
  }


}