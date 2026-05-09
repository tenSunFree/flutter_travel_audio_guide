import 'package:flutter/material.dart';
import '../../domain/entities/home_state.dart';
import 'home_fallback_image.dart';

/// List thumbnails 96×96
class HomeThumb extends StatelessWidget {
  const HomeThumb({super.key, required this.card});

  final HomeRecommendCard card;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 96,
        height: 96,
        child: card.imageUrl != null
            ? Image.network(
                card.imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => HomeFallbackImage(card.emoji),
              )
            : HomeFallbackImage(card.emoji),
      ),
    );
  }
}
