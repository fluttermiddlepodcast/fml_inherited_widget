import 'package:flutter/cupertino.dart';
import 'package:fml_inherited_widget/states/fmp_playing_episode_state.dart';

class FMPPlayingEpisodeStateProvider extends InheritedWidget {
  static FMPPlayingEpisodeState of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<FMPPlayingEpisodeStateProvider>();
    assert(
      result != null,
      'No FMPPlayingEpisodeStateProvider found in context',
    );
    return result!.state;
  }

  final FMPPlayingEpisodeState state;

  const FMPPlayingEpisodeStateProvider({
    required this.state,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(FMPPlayingEpisodeStateProvider oldWidget) =>
      state.playingEpisode != oldWidget.state.playingEpisode;
}
