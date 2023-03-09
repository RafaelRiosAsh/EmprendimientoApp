enum ChallengeType {
  daily,
  weekly,
  monthly,
}

class Challenge {
  final String title;
  final String subtitle;
  final ChallengeType type;
  final Duration duration;
  final Duration remainingTime;
  final int points;
  final double completedPercentage;

  Challenge({
    required this.title,
    required this.subtitle,
    required this.type,
    required this.duration,
    required this.remainingTime,
    this.completedPercentage = 0.0,
    this.points = 0,
  });

  final List<Challenge> challenges = [
    Challenge(
      title: 'Run a mile',
      subtitle: 'Run 1 mile as fast as you can',
      type: ChallengeType.daily,
      duration: const Duration(hours: 24),
      remainingTime: const Duration(hours: 23),
      points: 200,
    ),
    Challenge(
      title: '100 push-ups',
      subtitle: 'Complete 100 push-ups in a single day',
      type: ChallengeType.daily,
      duration: const Duration(hours: 24),
      remainingTime: const Duration(hours: 15),
      points: 200
    ),
    Challenge(
      title: 'Yoga challenge',
      subtitle: 'Complete a 30-minute yoga session every day for a week',
      type: ChallengeType.weekly,
      duration: const Duration(days: 7),
      remainingTime: const Duration(days: 4),
    ),
    Challenge(
      title: '30-day plank challenge',
      subtitle: 'Do a plank for longer every day for 30 days',
      type: ChallengeType.monthly,
      duration: const Duration(days: 30),
      remainingTime: const Duration(days: 20),
    ),
    Challenge(
      title: 'Cycling challenge',
      subtitle: 'Cycle 50 miles in a single week',
      type: ChallengeType.weekly,
      duration: const Duration(days: 7),
      remainingTime: const Duration(days: 3),
    ),
    // Add more challenges here
  ];

  List<Challenge> get dailyChallenges {
    return challenges
        .where((challenge) => challenge.type == ChallengeType.daily)
        .toList();
  }

  List<Challenge> get weeklyChallenges {
    return challenges
        .where((challenge) => challenge.type == ChallengeType.weekly)
        .toList();
  }

  List<Challenge> get monthlyChallenges {
    return challenges
        .where((challenge) => challenge.type == ChallengeType.monthly)
        .toList();
  }
}
