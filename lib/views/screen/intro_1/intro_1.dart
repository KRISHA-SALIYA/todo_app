// import 'package:flutter/material.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
//
// class IntroPage extends StatefulWidget {
//   const IntroPage({super.key});
//
//   @override
//   State<IntroPage> createState() => _IntroPageState();
// }
//
// class _IntroPageState extends State<IntroPage> {
//   int page = 0;
//   LiquidController liquidController = LiquidController();
//   late UpdateType updateType;
//   @override
//   void initState() {
//     liquidController = LiquidController();
//     super.initState();
//   }
//
//   final pages = [
//     Container(
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/image/t1.jpg"),
//           fit: BoxFit.fill,
//         ),
//       ),
//       child: const Column(
//         children: [
//           SizedBox(
//             height: 150,
//           ),
//           Text("Quick Update "),
//           Text(
//             " Style ",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.white,
//             ),
//           )
//         ],
//       ),
//     ),
//     Container(
//       width: double.infinity,
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//         image: AssetImage("assets/image/t2.jpg"),
//         fit: BoxFit.fill,
//       )),
//       child: const Column(
//         children: [
//           SizedBox(
//             height: 150,
//           ),
//           Text("Quick Updet "),
//           Text(
//             " Style ",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.white,
//             ),
//           )
//         ],
//       ),
//     ),
//     Container(
//       width: double.infinity,
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//         image: AssetImage("assets/image/t3.jpg"),
//         fit: BoxFit.fill,
//       )),
//       child: const Column(
//         children: [
//           SizedBox(
//             height: 150,
//           ),
//           Text("Quick Updet "),
//           Text(
//             " Style ",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.white,
//             ),
//           )
//         ],
//       ),
//     ),
//     Container(
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/image/t4.jpg"),
//           fit: BoxFit.fill,
//         ),
//       ),
//       child: const Column(
//         children: [
//           SizedBox(
//             height: 150,
//           ),
//           Text("Quick Updet "),
//           Text(
//             " Style ",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.white,
//             ),
//           )
//         ],
//       ),
//     )
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           LiquidSwipe(
//             pages: pages,
//             liquidController: LiquidController(),
//             enableLoop: true,
//             waveType: WaveType.liquidReveal,
//             ignoreUserGestureWhileAnimating: true,
//
//             onPageChangeCallback: pageChangeCallback,
//             initialPage: 3,
//           ),
//         ],
//       ),
//     );
//   }
//
//   pageChangeCallback(int page) {
//     setState(() {
//       page = page;
//     });
//   }
// }
