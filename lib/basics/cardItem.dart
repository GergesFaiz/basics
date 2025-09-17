// import 'package:flutter/material.dart';
//
//
// import '../cardmodel.dart';
//
// class CardItem extends StatelessWidget {
//   CardModel cardModel;
//
//   CardItem({required this.cardModel, super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(4),
//       elevation: 12,
//       color: Colors.red,
//       child: Padding(
//         padding: const EdgeInsets.all(1.0),
//         child: Stack(
//           alignment: AlignmentGeometry.bottomRight,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadiusGeometry.circular(25),
//               child: Image.asset(
//                 cardModel.imagePath,
//                 width: double.infinity,
//                 height: 200,
//                 fit: BoxFit.fill,
//               ),
//             ),
//             Container(
//               color: Color.fromRGBO(155, 59, 212, 0.500),
//               margin: EdgeInsets.only(bottom: 8, right: 8),
//               padding: EdgeInsets.all(8),
//               child: Text(
//                 cardModel.title,
//                 style: TextStyle(fontSize: 24, color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
