// import 'package:flutter/material.dart';
// import 'package:start_app/basics/cardItem.dart';
//
//
// import '../cardmodel.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen() {
//     createDamuyData();
//   }
//
//   List<CardModel> cards = [];
//
//   createDamuyData() {
//     for (int i = 0; i <= 200; i++) {
//       cards.add(
//         CardModel(title: "Gerges $i", imagePath: "assets/images/2.jpg"),
//       );
//       cards.add(CardModel(title: "Dad $i", imagePath: "assets/images/3.jpg"));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         shape: OutlineInputBorder(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(25),
//             bottomRight: Radius.circular(25),
//           ),
//         ),
//         backgroundColor: Colors.blue,
//         title: Text("Route"),
//         centerTitle: true,
//         leading: Icon(Icons.account_box, color: Colors.red, size: 50),
//         actions: [Icon(Icons.search), Icon(Icons.settings)],
//       ),
//
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 12,
//           crossAxisSpacing: 12,
//           childAspectRatio: 2/1,
//         ),
//         itemBuilder: (context, index) {
//           return CardItem(cardModel: cards[index]);
//         },
//         itemCount: cards.length,
//       ),
//     );
//   }
//
//
// }
