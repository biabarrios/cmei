import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calendar_calendar/calendar_calendar.dart';

class InicioFam extends StatefulWidget {
@override
_InicioFamState createState() => _InicioFamState();
}

class _InicioFamState extends State<InicioFam> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendário'),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Calendar(
                weekendOpacityEnable: true,
                previous: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1.5,
                            blurRadius: 5,
                            offset: Offset(2.0, 0.0))
                      ]),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                next: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1.5,
                            blurRadius: 5,
                            offset: Offset(2.0, 0.0))
                      ]),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                space: 20,
                onSelected: print,
                backgroundColor: Colors.white,
                activeColor: Colors.lightGreen,
                textStyleDays: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.black),
                textStyleWeekDay:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                titleStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                selectedStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: Text(
                "Atividades do dia",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),

    );
  }
}