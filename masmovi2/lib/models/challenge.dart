import 'package:flutter/material.dart';

enum ChallengeType {
  daily,
  weekly,
  monthly,
}

class Challenge {
  final String title;
  final String subtitle;
  final ChallengeType type;
  final int duration;
  final int remainingTime;
  final int points;
  final IconData icon;
  final double completedPercentage;

  Challenge({
    required this.title,
    required this.subtitle,
    required this.type,
    required this.duration,
    required this.remainingTime,
    required this.icon,
    this.completedPercentage = 0.0,
    this.points = 0,
  });
}
