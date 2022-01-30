import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Weather'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/setting');
                },
                icon: Icon(Icons.settings))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey.shade500,
                Colors.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _cloudIcon(),
                _temperature(),
                _location(),
                _date(),
                _hourlyPrediction(),
                _weeklyPrediction(),
              ],
            ),
          ),
        ));
  }

  _cloudIcon() {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Icon(
        Icons.cloud,
        size: 80,
      ),
    );
  }
}

_temperature() {
  return Text(
    '-10',
    style: TextStyle(fontSize: 80, fontWeight: FontWeight.w100),
  );
}

_location() {
  return Row(
    children: [
      Icon(Icons.place),
      SizedBox(
        width: 10,
      ),
      Text('London, UK'),
    ],
  );
}

_date() {
  return Row(
    children: [
      Text('Today:'),
      SizedBox(
        width: 10,
      ),
      Text('20.10.20'),
    ],
  );
}

final times = ['1', '2', '3', '1', '2', '3', '2', '3', '2', '3', '2', '3'];
_hourlyPrediction() {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      border: Border(
          top: BorderSide(color: Colors.white),
          bottom: BorderSide(color: Colors.white)),
    ),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: times.length,
        itemBuilder: (context, index) {
          return Container(
            width: 50,
            child: Card(
                child: Center(
              child: Text('${times[index]}'),
            )),
          );
        }),
  );
}

final weeks = ['1', '2', '3', '1', '2', '3', '2', '3', '2', '3', '2', '3'];
_weeklyPrediction() {
  return Expanded(
    child: Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white)),
      ),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: times.length,
          itemBuilder: (context, index) {
            return Container(
              width: 50,
              child: Card(
                  child: Center(
                child: Text('${times[index]}'),
              )),
            );
          }),
    ),
  );
}
