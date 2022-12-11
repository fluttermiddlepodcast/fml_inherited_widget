import 'dart:async';

import 'package:fml_inherited_widget/model/fmp_episode.dart';

abstract class FMPEpisodesRepository {
  Future<List<FMPEpisode>> getEpisodes();
}
