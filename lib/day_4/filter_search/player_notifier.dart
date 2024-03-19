import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'player_notifier.g.dart';

@riverpod
class PlayerNotifier extends _$PlayerNotifier {
  final List<Map<String, dynamic>> allplayers = [
    {"name": "Sachin Tendulkar", "country": "India"},
    {"name": "Virat Kohli", "country": "India"},
    {"name": "Rohit Sharma", "country": "India"},
    {"name": "Suresh Raina", "country": "India"},
    {"name": "jason Holder", "country": "West Indies"},
    {"name": "Chris Gayle", "country": "West Indies"},
    {"name": "David Warner", "country": "Austraila"},
    {"name": "Trent Boult", "country": "New Zealand"},
    {"name": "Ravindra Jadeja", "country": "India"},
    {"name": "Rishabh Pant", "country": "India"},
  ];

  @override
  int build() {
    return allplayers.length;
  }

  void filterPlayer(String playerName) {
    List<Map<String, dynamic>> results = [];
    if (playerName.isEmpty) {
      results = allplayers;
    } else {
      results = state
          .where((element) => element['name']
              .toString()
              .toLowerCase()
              .contains(playerName.toLowerCase()))
          .toList();
    }

    state = results.length;
  }
}
