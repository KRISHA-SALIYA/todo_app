// import 'package:flutter/material.dart';
// import 'package:todo_app/utils/app_raotes.dart';
//
// class IntroPage3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue, Colors.green],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Icon(
//               Icons.flutter_dash,
//               size: 100,
//               color: Colors.white,
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Welcome to Flutter',
//               style: TextStyle(
//                 fontSize: 24,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, AppRoutes.instance.introPage4);
//               },
//               child: const Text('Get Started'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
