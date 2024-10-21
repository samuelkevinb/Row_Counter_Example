import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterWidget(),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 10; // Menyimpan nilai awal

  void _increment() {
    setState(() {
      _counter++; // Menambah nilai counter
    });
  }

  void _decrement() {
    setState(() {
      _counter--; // Mengurangi nilai counter
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0), // Menambahkan padding untuk estetika
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: _increment, // Memanggil fungsi untuk menambah
                child: Icon(Icons.add),
              ),
              Text(
                '$_counter', // Menampilkan nilai counter
                style: TextStyle(fontSize: 24), // Menambahkan ukuran font untuk teks
              ),
              OutlinedButton(
                onPressed: _decrement, // Memanggil fungsi untuk mengurangi
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
