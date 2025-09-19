import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(CounterPage());
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Counting Game"),
          backgroundColor: Color(0xFF88BDF2),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                margin: EdgeInsets.only(bottom: 48), // outer spacing
                padding: EdgeInsets.all(8), // inner spacing
                child: Text(
                  "Counter: $counter",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text("+"),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 8),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (counter != 0) {
                      counter--;
                    } else {
                      Fluttertoast.showToast(
                        msg: "No minus numbers",
                        toastLength: Toast.LENGTH_SHORT,
                        backgroundColor: Color(0xFFBDDDFC),
                        textColor: Colors.black,
                      );
                    }
                  });
                },
                child: Text("-"),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 8),

              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
                child: Text("Reset", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
