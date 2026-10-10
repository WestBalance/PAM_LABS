import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/outfit_card.dart';
import 'outfit_result_screen.dart';

class SavedOutfitsScreen extends StatelessWidget {
  const SavedOutfitsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Сохранённые образы')),
    body: ListView.separated(
      padding: const EdgeInsets.all(16), itemCount: mockOutfits.length,
      separatorBuilder: (_, _) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final outfit = mockOutfits[index];
        return OutfitCard(outfit: outfit, onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => OutfitResultScreen(outfit: outfit))));
      },
    ),
  );
}
