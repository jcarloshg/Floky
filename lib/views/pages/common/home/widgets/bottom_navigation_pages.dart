import 'package:floky/views/pages/profile/pages/profile/profile.screen.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/home_activities.screen.dart';
import 'package:floky/views/pages/view_posts/pages/home_posts/screen.home_posts.dart';
import 'package:flutter/material.dart';

class ItemBarPage {
  final Widget page;
  final Icon icon;
  final String label;

  ItemBarPage({
    required this.page,
    required this.icon,
    required this.label,
  });
}

class BottomNavigationPages {
  static final List<ItemBarPage> _itemsBarPages = [
    ItemBarPage(
      icon: const Icon(Icons.note),
      label: 'Publicaciones',
      page: const HomePosts(),
    ),
    ItemBarPage(
      icon: const Icon(Icons.explore),
      label: 'Actividades',
      page: const HomeActivitiesScreen(),
    ),
    ItemBarPage(
      icon: const Icon(Icons.person),
      label: 'Perfil',
      page: const ProfileScreen(),
    ),
  ];

  static Widget getPage(int index) => _itemsBarPages[index].page;

  static List<BottomNavigationBarItem> getNavigationPages() {
    final List<BottomNavigationBarItem> navigationPages = [];

    for (final itemBarPage in _itemsBarPages) {
      final item = BottomNavigationBarItem(
        icon: itemBarPage.icon,
        label: itemBarPage.label,
        // tooltip: "ES UNA PINCHE PAGINA PRRA",
      );
      navigationPages.add(item);
    }

    return navigationPages;
  }
}
