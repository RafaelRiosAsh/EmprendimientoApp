import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/change_page_provider.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final changePageProvider = Provider.of<ChangePageProvider>(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: IndexedStack(
        index: changePageProvider.selectedIndex,
        children: const [
          ChallengesScreen(),
          MetricsScreen(),
          AvatarScreen(),
          StoreScreen(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
