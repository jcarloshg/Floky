import 'package:floky/views/pages/pages.index.dart';
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
      PageIndex.homeActivitiesScreen.screen,
      const Icon(Icons.explore),
      'Actividades',
    ),
    ItemBarPage(
      PageIndex.pendingActivitiesScreen.screen,
      const Icon(Icons.pending_actions),
      'Pendientes',
    ),
    ItemBarPage(
      PageIndex.profileScreen.screen,
      const Icon(Icons.person),
      'Perfil',
    ),
  ];

  static List<ItemBarPage> get itemsBarPages => _itemsBarPages;

  static Widget getPage(int index) => _itemsBarPages[index].page;

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
