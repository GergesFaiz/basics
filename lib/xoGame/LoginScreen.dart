import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start_app/xoGame/PlayersModel.dart';
import 'package:start_app/xoGame/xoGame.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "LoginScreen";

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String player1 = "";

  TextEditingController player2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(onChanged: (value) {
              player1 = value;
            },
              decoration: InputDecoration(
                labelText: "Player One",
                prefixIcon: Icon(Icons.play_arrow),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 12, horizontal: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: player2,
              decoration: InputDecoration(
                labelText: "Player Two",
                prefixIcon: Icon(Icons.play_arrow),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 12, horizontal: 16),
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(
              context,
              XoGame.routeName,
              arguments: PlayersModel(player1, player2.text),);
          }, child: Text("Let's Go"))
        ],
      ),

    );
  }
}
