import 'package:hooks_riverpod/hooks_riverpod.dart';

final storyIndexProvider = StateNotifierProvider<StoryPageNotifier, int>((ref) {
  return StoryPageNotifier();
});

class StoryPageNotifier extends StateNotifier<int> {
  StoryPageNotifier() : super(0);

  void update(int newPage) {
    state = newPage;
  }
}
