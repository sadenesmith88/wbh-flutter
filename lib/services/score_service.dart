import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/game.dart';

class ScoreService {
  Future<List<Game>> fetchGames(DateTime date) async {
    final dateStr = '${date.year}-${date.month}-${date.day}';
    final url = Uri.parse(
      'https://site.api.espn.com/apis/site/v2/sports/basketball/wnba/scoreboard?dates=$dateStr',
    );
    final res = await http.get(url);
    if (res.statusCode != 200) {
      throw Exception('Failed to load scores');
    }
    final body = jsonDecode(res.body) as Map<String, dynamic>;
    final events = body['events'] as List<dynamic>;
    return events.map((e) {
      // adapt these fields to the actual JSON you get back
      final comps = e['competitions'][0]['competitors'] as List<dynamic>;
      final home = comps.firstWhere((c) => c['homeAway'] == 'home');
      final away = comps.firstWhere((c) => c['homeAway'] == 'away');
      return Game(
        id: int.parse(e['id'] as String),
        homeTeam: home['team']['displayName'] as String,
        awayTeam: away['team']['displayName'] as String,
        homeScore: int.parse(home['score'] as String),
        awayScore: int.parse(away['score'] as String),
      );
    }).toList();
  }
}

