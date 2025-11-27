// TODO Implement this library.

import 'package:flutter/material.dart';
import '../../EXERCISE-4/database/jokes.dart';

Color appColor = Colors.green[300] as Color;

class WelcomeScreen extends StatelessWidget {
  final int? favoriteJokeId;
  final Function(int) onFavoriteTap;

  const WelcomeScreen({
    super.key,
    required this.favoriteJokeId,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jokes.length,
      itemBuilder: (context, index) {
        final joke = jokes[index];
        final isFavorite = joke.id == favoriteJokeId;

        return Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.5, color: Colors.grey),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      joke.title,
                      style: TextStyle(
                          color: appColor, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 10),
                    Text(joke.description),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
                onPressed: () => onFavoriteTap(joke.id),
              )
            ],
          ),
        );
      },
    );
  }
}
