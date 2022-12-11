import 'package:fml_inherited_widget/model/fmp_episode.dart';

class FMPPlayingEpisodeState {
  FMPEpisode? playingEpisode;

  FMPPlayingEpisodeState({this.playingEpisode});

  void updateState(FMPEpisode episode) {
    if (playingEpisode == episode) {
      playingEpisode = null;
    } else {
      playingEpisode = episode;
    }
  }
}
