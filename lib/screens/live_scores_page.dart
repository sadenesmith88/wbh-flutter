import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/score_provider.dart';
import '../models/game.dart';

class LiveScoresPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncGames = ref.watch(gamesProvider(DateTime.now()));

    return Scaffold(
      appBar: AppBar(title: Text('Live Scores')),
      body: asyncGames.when(
        data: (games) => ListView.builder(
          itemCount: games.length,
          itemBuilder: (_, i) => ListTile(
            title: Text('${games[i].homeTeam} vs ${games[i].awayTeam}'),
            subtitle: Text('${games[i].homeScore} – ${games[i].awayScore}'),
          ),
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }
} 