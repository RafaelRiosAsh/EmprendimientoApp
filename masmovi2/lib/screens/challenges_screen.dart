// ignore_for_file: unused_local_variable, unused_element, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../helpers/custom_colors.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customColors = CustomColors();

    return Scaffold(
      body: SingleChildScrollView(
          
          child: Column(children: [_Body(customColors: customColors)])),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
    required this.customColors,
  });

  final CustomColors customColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            customColors.mediumBlue,
            customColors.lightBlue,
            customColors.darkLightBlue
          ],
        ),
      ),
      child: Column(children: const [_UpperHalf(), _BottomHalf()]),
    );
  }
}

class _UpperHalf extends StatelessWidget {
  const _UpperHalf({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 40),
        width: double.infinity,
        height: size.height * 0.40,
        child: Column(children: const [
          _Title(),
          SizedBox(
            height: 30,
          ),
          _IconAndPoints(),
          SizedBox(
            height: 30,
          ),
          _Cals()
        ]),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hola Pablo',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [
            Shadow(
              color: Colors.black,
              blurRadius: 7,
              offset: Offset(0, 1),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconAndPoints extends StatelessWidget {
  const _IconAndPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          _Card(
              number: '286',
              text: 'Tus Puntos',
              icon: FaIcon(
                FontAwesomeIcons.coins,
                color: CustomColors().lightGrey,
              )),
          const SizedBox(width: 17),
          _Card(
              number: '3',
              text: 'Retos',
              icon: FaIcon(
                FontAwesomeIcons.trophy,
                color: CustomColors().lightGrey,
              )),
          const SizedBox(width: 17),
          _Card(
              number: '3',
              text: 'Nivel',
              icon: FaIcon(
                FontAwesomeIcons.diceD20,
                color: CustomColors().lightGrey,
              )),
          const SizedBox(width: 17),
          _Card(
              number: '-2.5kg',
              text: 'Kg perdido',
              icon: FaIcon(
                FontAwesomeIcons.weightScale,
                color: CustomColors().lightGrey,
              )),
        ],
      ),
    );
  }
}

class _Cals extends StatelessWidget {
  const _Cals({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'metrics');
      },
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: CustomColors().darkBlue,
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            FaIcon(
              FontAwesomeIcons.fire,
              color: CustomColors().lightGrey,
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Calorías quemadas',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 7,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '1,200',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 7,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            const FaIcon(
              FontAwesomeIcons.arrowRight,
              color: Colors.white,
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  String number;
  String text;
  FaIcon icon;

  _Card({
    super.key,
    required this.number,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: CustomColors().darkBlue,
      ),
      child: Column(
        children: [
          icon,
          const SizedBox(height: 5),
          Text(number,
              style:
                  const TextStyle(fontSize: 20, color: Colors.white, shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 7,
                  offset: Offset(0, 1),
                ),
              ])),
          const SizedBox(height: 10),
          Text(text,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white30,
              )),
        ],
      ),
    );
  }
}

// Bottom Half

class _BottomHalf extends StatelessWidget {
  const _BottomHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 200, color: Colors.red);
  }
}
