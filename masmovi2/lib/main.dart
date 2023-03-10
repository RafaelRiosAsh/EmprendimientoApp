import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Import all screens
import 'screens/screens.dart';
import 'providers/change_page_provider.dart';
import '../helpers/custom_colors.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (_) => ChangePageProvider(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = CustomColors();

    return MaterialApp(
        title: 'MasMovi2',
        debugShowCheckedModeBanner: false,
        initialRoute:
            'home', // TODO: Change to 'login' when navigation bottom bar is implemented
        routes: {
          'home': (context) => const HomeScreen(),
          'login': (context) => const LoginScreen(),
          'store': (context) => const StoreScreen(),
          'challenges': (context) =>
              ChallengesScreen(customColors: customColors),
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