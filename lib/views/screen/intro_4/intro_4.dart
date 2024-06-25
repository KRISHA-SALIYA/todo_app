// import 'package:flutter/material.dart';
//
// import '../../../utils/app_raotes.dart';
// import '../home_page/home_page.dart';
//
// class IntroPage4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue, Colors.green],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               Icons.flutter_dash,
//               size: 100,
//               color: Colors.white,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Welcome to Flutter',
//               style: TextStyle(
//                 fontSize: 24,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, AppRoutes.instance.homePage);
//               },
//               child: Text('Get Started'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
