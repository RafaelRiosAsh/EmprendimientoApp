import 'package:flutter/material.dart';
// Import all screens
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MasMovi2',
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => const LoginScreen(),
          'store': (context) => const StoreScreen(),
          'challenges': (context) => const ChallengesScreen(),
          'metrics': (context) => const MetricsScreen(),
          'avatar': (context) => const AvatarScreen(),
        });
  }
}



// colors:
// Dark Blue: #2D72C2
// Light Blue: #4BC4F2
// White: #FFFFFF
// Grey: #F2F2F2