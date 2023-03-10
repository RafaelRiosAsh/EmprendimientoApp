import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/challenge.dart';

final List<Challenge> listOfChallenges = [
  Challenge(
    title: 'Sesión de Yoga',
    subtitle: 'Realiza una sesión de yoga de 30 minutos',
    type: ChallengeType.daily,
    duration: 24,
    remainingTime: 23,
    icon: FontAwesomeIcons.yinYang,
    points: 200,
  ),
  Challenge(
    title: '30 minutos de baile',
    subtitle: 'Baila durante 30 minutos seguidos',
    type: ChallengeType.weekly,
    duration: 168,
    remainingTime: 10,
    icon: FontAwesomeIcons.drum,
    points: 500,
  ),
  Challenge(
    title: '20 flexiones de brazos',
    subtitle: 'Realiza 20 flexiones de brazos en un día',
    type: ChallengeType.monthly,
    duration: 720,
    remainingTime: 500,
    icon: FontAwesomeIcons.dumbbell,
    points: 1000,
  ),
  Challenge(
    title: 'Salta la cuerda',
    subtitle: 'Salta la cuerda durante 10 minutos seguidos',
    type: ChallengeType.daily,
    duration: 24,
    remainingTime: 20,
    icon: FontAwesomeIcons.weightScale,
    points: 300,
  ),
  Challenge(
    title: '30 minutos de estiramientos',
    subtitle: 'Realiza estiramientos durante 30 minutos seguidos',
    type: ChallengeType.weekly,
    duration: 168,
    remainingTime: 100,
    icon: FontAwesomeIcons.heartPulse,
    points: 600,
  ),
  Challenge(
    title: 'Sentadillas',
    subtitle: 'Realiza 50 sentadillas en un día',
    type: ChallengeType.monthly,
    duration: 720,
    remainingTime: 600,
    icon: FontAwesomeIcons.dumbbell,
    points: 1200,
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
