import 'package:floky/views/pages/activities/activities.index.dart';
import 'package:floky/views/pages/pending_activities/pending_activities.index.dart';
import 'package:floky/views/pages/profile/profile.index.dart';
import 'package:flutter/material.dart';

class ItemBarPage {
  final Widget page;
  final Icon icon;
  final String label;

  ItemBarPage(this.page, this.icon, this.label);
}

class BottomNavigationPages {
  static final List<ItemBarPage> _itemsBarPages = <ItemBarPage>[
    ItemBarPage(
      const ActivitiesScreen(),
      const Icon(Icons.explore),
      'Actividades',
    ),
    ItemBarPage(
      const PendingActivitiesScreen(),
      const Icon(Icons.pending_actions),
      'Pendientes',
    ),
    ItemBarPage(
      const ProfileScreen(),
      const Icon(Icons.person),
      'Perfil',
    ),
  ];

  static List<ItemBarPage> get itemsBarPages => _itemsBarPages;

  static List<BottomNavigationBarItem> getNavigationPages() {
    final List<BottomNavigationBarItem> navigationPages = [];

    for (final itemBarPage in _itemsBarPages) {
      final item = BottomNavigationBarItem(
        icon: itemBarPage.icon,
        label: itemBarPage.label,
        tooltip: "ES UNA PINCHE PAGINA PRRA",
      );
      navigationPages.add(item);
    }

    return navigationPages;
  }
}
