// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey[300],
      child: Stack(
        children: [_UpperContainer(), _IconAndTitle(), child],
      ),
    );
  }
}

// Icon and Title
class _IconAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 50),
          child: const Icon(
            Icons.person_pin,
            size: 100,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 20.0,
                color: Colors.black,
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'MasMovi✌🏻',
          style: TextStyle(
              color: Color(0xfff2f2f2),
              fontSize: 40,
              shadows: [
                Shadow(
                  blurRadius: 20.0,
                  color: Colors.black,
                  offset: Offset(1.0, 1.0),
                ),
              ],
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

// Blue Container with Circles
class _UpperContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height * 0.45,
        decoration: _BoxDecoration(),
        child: Stack(
          children: const [
            Positioned(left: 30, top: 150, child: _Circle(opacity: 0.2)),
            Positioned(left: -30, top: -40, child: _Circle(opacity: 0.24)),
            Positioned(right: -20.5, top: 300, child: _Circle(opacity: 0.3)),
            Positioned(left: -70, bottom: -30, child: _Circle(opacity: 0.1)),
            Positioned(right: 30, bottom: 390, child: _Circle(opacity: 0.2)),
          ],
        ));
  }

  BoxDecoration _BoxDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        // Blue colors
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff2D72C2),
          Color(0xff4BC4F2),
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
    );
  }
}

// Circles appearing on the upper container of the background
class _Circle extends StatelessWidget {
  final double opacity;

  const _Circle({required this.opacity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, opacity),
        shape: BoxShape.circle,
      ),
    );
  }
}



// colors:
// Dark Blue: #0A2A5E
// Light Blue: #4BC4F2
// White: #FFFFFF
// Grey: #F2F2F2