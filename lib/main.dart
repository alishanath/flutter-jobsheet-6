import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Alisha Nathania Septianty',
    'Aliya Putri Nurrahmani',
    'Devita Apriliani',
    'Eli Yuniati',
    'Esther Oktavia Hotoroe'
  ];
  var listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.yellow
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listNama.length,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(
            listNama[i],
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: listWarna[(index + i) % listWarna.length],
            ),
          ),
        );
      },
    );
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TeksUtama teksUtama = TeksUtama();
    return MaterialApp(
      title: 'Jobsheet 6',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jobsheet 6 Stateful Widget'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: teksUtama,
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
