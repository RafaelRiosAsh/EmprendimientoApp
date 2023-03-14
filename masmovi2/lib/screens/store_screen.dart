import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masmovi2/helpers/get_shop.dart';
import 'package:masmovi2/models/challenge.dart';
import '../helpers/custom_colors.dart';
import '../widgets/widgets.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = CustomColors();
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
            child: Column(children: const [_UpperHalf(), _BottomHalf()])),
      ),
    );
  }
}

// Upper Half

class _UpperHalf extends StatelessWidget {
  const _UpperHalf({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 22),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: CustomColors().darkBlue,
              width: 2.5,
            ),
          ),
        ),
        child: Column(children: const [
          _Title(),
        ]),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tienda',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [
            Shadow(
              color: CustomColors().darkBlue,
              blurRadius: 7,
              offset: const Offset(0, 1),
            ),
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
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 20),
          _Challenges(type: "Daily"),
          const SizedBox(height: 20),
          _Challenges(type: "Weekly"),
          const SizedBox(height: 20),
          _Challenges(type: "Monthly"),
        ],
      ),
    );
  }
}

class _Challenges extends StatelessWidget {
  String type;

  _Challenges({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    List<Challenge> list = [];

    if (type == 'Daily') {
      type = 'Agregar Niveles';
      list = dailyChallenges;
    } else if (type == 'Weekly') {
      type = 'Comprar Comida';
      list = weeklyChallenges;
    } else {
      type = 'Comprar Ropa';
      list = monthlyChallenges;
    }

    return Column(
      children: [
        Text(
          type,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: CustomColors().white,
            shadows: [
              Shadow(
                color: CustomColors().darkBlue,
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ChallengeCard(
              challenge: list[index],
            );
          },
        )
      ],
    );
  }
}
