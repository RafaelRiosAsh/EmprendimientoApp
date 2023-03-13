// ignore_for_file: unused_element, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masmovi2/helpers/custom_colors.dart';
import 'package:masmovi2/models/challenge.dart';

class ChallengeCard extends StatelessWidget {
  final Challenge challenge;

  const ChallengeCard({
    Key? key,
    required this.challenge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CustomColors().darkBlue,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 5),
                  blurRadius: 10)
            ]),
        child: Stack(
          children: [
            _Background(icon: challenge.icon),
            _Content(
                points: challenge.points,
                title: challenge.title,
                subtitle: challenge.subtitle,
                icon: challenge.icon),
          ],
        ));
  }
}

class _Background extends StatelessWidget {
  final IconData icon;

  const _Background({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25,
      right: 15,
      child: Container(
          child: FaIcon(
        icon,
        color: Colors.white.withOpacity(0.2),
        size: 20,
      )),
    );
  }
}

class _Content extends StatelessWidget {
  final int points;
  final String title;
  final String subtitle;
  final IconData icon;

  const _Content(
      {super.key,
      required this.points,
      required this.title,
      required this.subtitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Column with Icon and Points
        _IconAndPoints(icon: icon, points: points),
        const SizedBox(
          width: 20,
        ),
        // Column with Title and Subtitle
        _TitleAndSubtitle(title: title, subtitle: subtitle),
      ],
    );
  }
}

class _IconAndPoints extends StatelessWidget {
  final IconData icon;
  final int points;

  const _IconAndPoints({super.key, required this.icon, required this.points});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          color: CustomColors().lightGrey,
          size: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '$points pts',
          style: const TextStyle(color: Colors.white, fontSize: 12),
        )
      ],
    );
  }
}

class _TitleAndSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const _TitleAndSubtitle(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 2,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, overflow: TextOverflow.clip),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          maxLines: 2,
          style: const TextStyle(
              color: Colors.white, fontSize: 10, overflow: TextOverflow.clip),
        )
      ],
    );
  }
}
