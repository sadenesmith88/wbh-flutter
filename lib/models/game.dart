import 'package:json_annotation/json_annotation.dart';
part 'game.g.dart';

@JsonSerializable()
class Game {
  final int id;
  final String homeTeam;
  final String awayTeam;
  final int homeScore;
  final int awayScore;

  Game({
    required this.id,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeScore,
    required this.awayScore,
  });

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}
