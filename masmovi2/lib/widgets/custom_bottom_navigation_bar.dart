import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/change_page_provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final changePageProvider = Provider.of<ChangePageProvider>(context);

    return BottomNavigationBar(
      currentIndex: changePageProvider.selectedIndex,
      onTap: (index) => changePageProvider.setSelectedIndex(index),
      backgroundColor: const Color(0xff4BC4F2),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[600],
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.flag),
          label: 'Retos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Métricas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Avatar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Tienda',
        ),
      ],
    );
  }
}
