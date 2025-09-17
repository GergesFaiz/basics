import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});


  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Counter")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          num++;
          setState(() {

          });
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add, size: 30, color: Colors.white),
      ),
      body: Center(
        child: Text(
          "$num",
          style: TextStyle(
            fontSize: 32,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CounterScreen extends StatefulWidget {
//   const CounterScreen({super.key});
//
//   @override
//   State<CounterScreen> createState() => _CounterScreenState();
// }
//
// class _CounterScreenState extends State<CounterScreen> {
//   int num = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text(
//           "Counter",
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           num++;
//           setState(() {
//
//           });
//         },
//         backgroundColor: Colors.red,
//         child: Icon(Icons.add, size: 32),
//       ),
//       body: Center(
//         child: Text(
//           "$num",
//           style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
