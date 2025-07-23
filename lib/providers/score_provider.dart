// lib/providers/score_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/game.dart';
import '../services/score_service.dart';

/// The real, async provider that fetches from your network service.
final scoreServiceProvider = Provider<ScoreService>((ref) => ScoreService());

final gamesProvider = FutureProvider.family<List<Game>, DateTime>(
  (ref, date) async {
    final service = ref.read(scoreServiceProvider);
    return service.fetchGames(date);
  },
);

/// A simple, synchronous provider for mock data (with IDs!).
final mockGamesProvider = Provider<List<Game>>((ref) => [
      Game(
        id: 1,
        homeTeam: 'Las Vegas Aces',
        awayTeam: 'New York Liberty',
        homeScore: 99,
        awayScore: 82,
      ),
      Game(
        id: 2,
        homeTeam: 'Connecticut Sun',
        awayTeam: 'Dallas Wings',
        homeScore: 88,
        awayScore: 85,
      ),
      Game(
        id: 3,
        homeTeam: 'Washington Mystics',
        awayTeam: 'Atlanta Dream',
        homeScore: 95,
        awayScore: 101,
      ),
    ]);

