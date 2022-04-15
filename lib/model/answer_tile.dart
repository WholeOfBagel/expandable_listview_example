import 'package:meta/meta.dart';

class AnswerTile {
  final String title;
  final String content;
  final List<AnswerTile> tiles;

  const AnswerTile({
    @required this.title,
    this.content,
    this.tiles = const [],
  });
}