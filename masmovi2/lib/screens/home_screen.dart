import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/change_page_provider.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';
import '../helpers/custom_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final changePageProvider = Provider.of<ChangePageProvider>(context);
    final customColors = CustomColors();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: IndexedStack(
        index: changePageProvider.selectedIndex,
        children:  [
          ChallengesScreen(customColors: customColors),
          const MetricsScreen(),
          const AvatarScreen(),
          const StoreScreen(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
