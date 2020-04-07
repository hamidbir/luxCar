import 'package:flutter/material.dart';
import 'package:luxcar/Car.dart';

class ButtonsAndName extends StatelessWidget {
  Car car = Car();
  ButtonsAndName({this.car});

  @override
  Widget build(BuildContext context) {
   return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(top:18),
            child: ButtonTheme(
              padding: EdgeInsets.only(top: 4, bottom: 4),
              minWidth: 150,
              height: 50,
              child: OutlineButton(
                onPressed: () {},
                borderSide:
                    BorderSide(color: Colors.white, style: BorderStyle.solid),
                highlightedBorderColor: Colors.green,
                splashColor: Colors.green,
                child: Text(
                  'اطلاعات کامل ماشین',
                  style: TextStyle(color:Colors.white,fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ButtonTheme(
            padding: EdgeInsets.only(top: 4, bottom: 4),
            minWidth: 150,
            height: 50,
            child: OutlineButton(
              onPressed: () {},
              color: Colors.white,
              highlightedBorderColor: Colors.green,
              splashColor: Colors.green,
              borderSide:
                  BorderSide(color:Colors.white, style: BorderStyle.solid),
              child: Text(
                'گالری',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ButtonTheme(
            padding: EdgeInsets.only(top: 4, bottom: 4),
            minWidth: 150,
            height: 50,
            child: OutlineButton(
              onPressed: () {},
              color: Colors.white,
              highlightedBorderColor: Colors.white,
              splashColor: Colors.white,
              borderSide:
                  BorderSide(color: Colors.green, style: BorderStyle.solid),
              child: Text(
                'ثبت نام',
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(car.getName(),
            style: TextStyle(color: Colors.white, fontSize: 42, fontWeight: FontWeight.bold),
          ),
          
        ],
      ),
    );
  }
}