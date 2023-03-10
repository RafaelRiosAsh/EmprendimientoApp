import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/change_page_provider.dart';
import '../helpers/custom_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final changePageProvider = Provider.of<ChangePageProvider>(context);

    return BottomNavigationBar(
      currentIndex: changePageProvider.selectedIndex,
      onTap: (index) => changePageProvider.setSelectedIndex(index),
      backgroundColor: CustomColors().darkBlue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      elevation: 10,
      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 10, top: 5),
            child: FaIcon(
              FontAwesomeIcons.flag,
            ),
          ),
          label: 'Retos',
        ),
        BottomNavigationBarItem(
          icon: Padding(
              padding: EdgeInsets.only(bottom: 10, top: 5),
              child: FaIcon(FontAwesomeIcons.chartLine)),
          label: 'Métricas',
        ),
        BottomNavigationBarItem(
          icon: Padding(
              padding: EdgeInsets.only(bottom: 10, top: 5),
              child: FaIcon(FontAwesomeIcons.userAstronaut)),
          label: 'Avatar',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 10, top: 5),
            child: FaIcon(FontAwesomeIcons.shop),
          ),
          label: 'Tienda',
        ),
      ],
    );
  }
}
