import 'package:flutter/cupertino.dart';
import 'package:fml_inherited_widget/providers/fmp_episodes_repository_provider.dart';
import 'package:fml_inherited_widget/providers/fmp_playing_episode_state_provider.dart';
import 'package:fml_inherited_widget/repository/fmp_episodes_repository_impl.dart';
import 'package:fml_inherited_widget/states/fmp_playing_episode_state.dart';

class DI extends StatelessWidget {
  final Widget child;

  const DI({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return FMPEpisodesRepositoryProvider(
      fmpEpisodesRepository: FMPEpisodesRepositoryImpl(),
      child: FMPPlayingEpisodeStateProvider(
        state: FMPPlayingEpisodeState(),
        child: child,
      ),
    );
  }
}
