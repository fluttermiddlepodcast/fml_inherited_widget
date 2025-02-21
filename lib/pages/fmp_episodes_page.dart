import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fml_inherited_widget/providers/fmp_episodes_repository_provider.dart';
import 'package:fml_inherited_widget/providers/fmp_playing_episode_state_provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FMPEpisodesPage extends StatefulWidget {
  const FMPEpisodesPage({super.key});

  @override
  State<FMPEpisodesPage> createState() => _FMPEpisodesPageState();
}

class _FMPEpisodesPageState extends State<FMPEpisodesPage> {
  @override
  Widget build(BuildContext context) {
    final fmpEpisodesRepository = FMPEpisodesRepositoryProvider.of(context);
    final playingEpisodeState = FMPPlayingEpisodeStateProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Middle Podcast',
        ),
      ),
      body: Builder(
        builder: (context) {
          return FutureBuilder(
            future: fmpEpisodesRepository.getEpisodes(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                final episodes = snapshot.data!;
                if (episodes.isEmpty) {
                  return const Center(
                    child: Text('No episodes'),
                  );
                }
                return ListView.builder(
                  itemCount: episodes.length,
                  itemBuilder: (_, index) {
                    final episode = episodes[index];
                    return ListTile(
                      selectedColor: episode == playingEpisodeState.playingEpisode ? Colors.blue.shade300 : null,
                      selected: episode == playingEpisodeState.playingEpisode,
                      title: Text(episode.title),
                      subtitle: Text(episode.shortDescription),
                      leading: SizedBox(
                        height: 48,
                        width: 48,
                        child: CachedNetworkImage(
                          imageUrl: episode.logoUrl,
                        ),
                      ),
                      trailing: SizedBox(
                        height: 48,
                        width: 48,
                        child: IconButton(
                          icon: const Icon(Icons.open_in_browser),
                          onPressed: () => launchUrlString(episode.url),
                        ),
                      ),
                      onTap: () => setState(
                        () => playingEpisodeState.updateState(episode),
                      ),
                    );
                  },
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }
}
