import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import '../../../utils/app_raotes.dart';

class SpleshPage extends StatefulWidget {
  const SpleshPage({super.key});

  @override
  State<SpleshPage> createState() => _SpleshPageState();
}

class _SpleshPageState extends State<SpleshPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.instance.homePage,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/236x/24/ed/e0/24ede0000cc3e1b22582fa5f36cfb6f2.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                "TODO App ",
                style: GoogleFonts.aclonica(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
