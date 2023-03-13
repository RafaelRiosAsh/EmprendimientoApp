import 'package:flutter/material.dart';
import 'package:masmovi2/screens/screens.dart';
import '../helpers/custom_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);
  //var dog = Image(image: AssetImage('assets/images/dog.gif'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const _IconAndPoints(),
            const SizedBox(height: 150),
            Image.asset(
              'assets/images/dof.gif',
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
                _Card2(
                    size: 101,
                    font: 15,
                    backgroundColor: Color.fromARGB(255, 227, 227, 227),
                    number: 'Alimentar',
                    icon: FaIcon(FontAwesomeIcons.bone)),
                const SizedBox(width: 10),
                _Card2(
                    size: 180,
                    font: 40,
                    backgroundColor: Colors.white,
                    number: 'Jugar',
                    icon: FaIcon(FontAwesomeIcons.gamepad)),
                const SizedBox(width: 10),
                _Card2(
                    size: 101,
                    font: 15,
                    backgroundColor: Color.fromARGB(255, 227, 227, 227),
                    number: 'Ejercitar',
                    icon: FaIcon(FontAwesomeIcons.dumbbell))
              ],
            ),
          ], //const _IconAndPoints(),
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
              backgroundColor: CustomColors().darkBlue,
              number: '5 / 10',
              text: 'Hambre',
              icon: FaIcon(
                FontAwesomeIcons.bowlFood,
                color: CustomColors().lightGrey,
              )),
          const SizedBox(width: 10),
          _Card(
              backgroundColor: CustomColors().darkBlue,
              number: '8 / 10',
              text: 'Energía',
              icon: FaIcon(
                FontAwesomeIcons.bolt,
                color: CustomColors().lightGrey,
              )),
          const SizedBox(width: 10),
          _Card(
              backgroundColor: CustomColors().darkBlue,
              number: '3',
              text: 'Nivel',
              icon: FaIcon(
                FontAwesomeIcons.diceD20,
                color: CustomColors().lightGrey,
              )),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  String number;
  String text;
  FaIcon icon;
  Color backgroundColor = CustomColors().darkBlue;

  _Card({
    super.key,
    required this.number,
    required this.text,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 130,
      height: 90,
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
        color: backgroundColor,
      ),
      child: Column(
        children: [
          icon,
          const SizedBox(height: 3),
          Text(number,
              style:
                  const TextStyle(fontSize: 20, color: Colors.white, shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 7,
                  offset: Offset(0, 1),
                ),
              ])),
          const SizedBox(height: 2),
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

class _Card2 extends StatelessWidget {
  String number;
  FaIcon icon;
  Color backgroundColor = CustomColors().darkBlue;
  double size;
  double font;

  _Card2({
    super.key,
    required this.number,
    required this.icon,
    required this.backgroundColor,
    required this.size,
    required this.font,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(
          color: customColors.darkBlue,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 3),
          Text(number,
              style: TextStyle(fontSize: font, color: customColors.darkBlue)),
        ],
      ),
    );
  }
}
