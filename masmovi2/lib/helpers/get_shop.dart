import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/challenge.dart';

final List<Challenge> listOfChallenges = [
  Challenge(
    title: 'Nivel 15',
    subtitle: 'agrega 15 niveles a tu mascota',
    type: ChallengeType.daily,
    duration: 24,
    remainingTime: 23,
    icon: FontAwesomeIcons.arrowUp,
    points: 150,
  ),
  Challenge(
    title: 'Pasta',
    subtitle: 'Sube el alimento de tu mascota por 2 puntos',
    type: ChallengeType.weekly,
    duration: 168,
    remainingTime: 10,
    icon: FontAwesomeIcons.bowlFood,
    points: 500,
  ),
  Challenge(
    title: 'Chamarra',
    subtitle: 'Compra una chamarra para tu perrito',
    type: ChallengeType.monthly,
    duration: 720,
    remainingTime: 500,
    icon: FontAwesomeIcons.shirt,
    points: 1121,
  ),
  Challenge(
    title: 'Nivel 2',
    subtitle: 'agrega 2 niveles a tu mascota',
    type: ChallengeType.daily,
    duration: 24,
    remainingTime: 20,
    icon: FontAwesomeIcons.arrowUp,
    points: 300,
  ),
  Challenge(
    title: 'Atún',
    subtitle: 'Sube el alimento de tu mascota por 1 punto',
    type: ChallengeType.weekly,
    duration: 168,
    remainingTime: 100,
    icon: FontAwesomeIcons.bowlFood,
    points: 600,
  ),
  Challenge(
    title: 'Gorra',
    subtitle: 'Compra un collar para tu perro',
    type: ChallengeType.monthly,
    duration: 720,
    remainingTime: 600,
    icon: FontAwesomeIcons.shirt,
    points: 1530,
  ),
];

List<Challenge> dailyChallenges = listOfChallenges
    .where((challenge) => challenge.type == ChallengeType.daily)
    .toList();

List<Challenge> weeklyChallenges = listOfChallenges
    .where((challenge) => challenge.type == ChallengeType.weekly)
    .toList();

List<Challenge> monthlyChallenges = listOfChallenges
    .where((challenge) => challenge.type == ChallengeType.monthly)
    .toList();
