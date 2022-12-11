import 'package:fml_inherited_widget/model/fmp_episode.dart';
import 'package:fml_inherited_widget/repository/fmp_episodes_repository.dart';

class FMPEpisodesRepositoryImpl extends FMPEpisodesRepository {
  static const _image =
      'https://mavecloud.s3mts.ru/storage/podcasts/e16e3c53-5b62-41dc-bc49-eda4843e2338/images/3d868358-008c-45db-82d9-09051596743e_600.png';
  static const _linkPart = 'https://fluttermiddlepodcast.mave.digital/ep-';

  static final _episodes = [
    FMPEpisode(
      'Flutter Middle Podcast #1 - Требования к Junior Flutter Developer',
      'В выпуске говорим о требованиях к Junior Flutter Developer.',
      _image,
      '${_linkPart}1',
    ),
    FMPEpisode(
      'Flutter Middle Podcast #2 - Требования к Middle Flutter Developer',
      'В выпуске говорим о требованиях к Middle Flutter Developer.',
      _image,
      '${_linkPart}2',
    ),
    FMPEpisode(
      'Flutter Middle Podcast #3 - Полезные материалы для разработчиков',
      'В выпуске говорим о полезных материалах для разработчиков.',
      _image,
      '${_linkPart}3',
    ),
    FMPEpisode(
      'Flutter Middle Podcast #4 - Требования к Senior Flutter Developer',
      'В выпуске говорим о требованиях к Senior Flutter Developer.',
      _image,
      '${_linkPart}4',
    ),
    FMPEpisode(
      'Flutter Middle Podcast #5 - Полезные книги для разработчиков',
      'В выпуске говорим о полезных книгах для разработчиков.',
      _image,
      '${_linkPart}5',
    ),
    FMPEpisode(
      'Flutter Middle Podcast #6 - Процесс собеседования Flutter-разработчиков',
      'В выпуске говорим о собеседованиях Flutter-разработчиков.',
      _image,
      '${_linkPart}6',
    ),
    FMPEpisode(
      'Flutter Middle Podcast #7 - stacked',
      'В выпуске говорим о пакете stacked.',
      _image,
      '${_linkPart}7',
    ),
    FMPEpisode(
      'Flutter Middle Podcast #8 - Почему компании выбирают Flutter',
      'В выпуске говорим о том, почему компании выбирают Flutter для разработки приложений.',
      _image,
      '${_linkPart}8',
    ),
    FMPEpisode(
      'Flutter Middle Podcast #9 - Pet-проекты',
      'В выпуске говорим о pet-проектах.',
      _image,
      '${_linkPart}9',
    ),
  ];

  @override
  Future<List<FMPEpisode>> getEpisodes() async => Future.delayed(
        const Duration(seconds: 3),
        () => _episodes,
      );
}
