import 'package:flutter/material.dart';
import '../screens/wardrobe_screen.dart';
import '../screens/generator_screen.dart';
import '../screens/saved_outfits_screen.dart';
import '../screens/profile_screen.dart';

class DemoShell extends StatefulWidget {
  const DemoShell({super.key});

  @override
  State<DemoShell> createState() => _DemoShellState();
}

class _DemoShellState extends State<DemoShell> {
  int _index = 0;
  static const _screens = [
    WardrobeScreen(),
    GeneratorScreen(),
    SavedOutfitsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: _screens[_index],
    bottomNavigationBar: NavigationBar(
      selectedIndex: _index,
      onDestinationSelected: (index) => setState(() => _index = index),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.checkroom_outlined),
          label: 'Гардероб',
        ),
        NavigationDestination(
          icon: Icon(Icons.auto_awesome_outlined),
          label: 'Подбор',
        ),
        NavigationDestination(
          icon: Icon(Icons.bookmark_outline),
          label: 'Образы',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline),
          label: 'Профиль',
        ),
      ],
    ),
  );
}
