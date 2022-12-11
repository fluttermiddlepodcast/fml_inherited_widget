import 'package:flutter/cupertino.dart';
import 'package:fml_inherited_widget/repository/fmp_episodes_repository.dart';

class FMPEpisodesRepositoryProvider extends InheritedWidget {
  static FMPEpisodesRepository of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<FMPEpisodesRepositoryProvider>();
    assert(
      result != null,
      'No FMPEpisodesRepositoryProvider found in context',
    );
    return result!.fmpEpisodesRepository;
  }

  final FMPEpisodesRepository fmpEpisodesRepository;

  const FMPEpisodesRepositoryProvider({
    super.key,
    required super.child,
    required this.fmpEpisodesRepository,
  });

  @override
  bool updateShouldNotify(FMPEpisodesRepositoryProvider oldWidget) =>
      oldWidget.fmpEpisodesRepository != fmpEpisodesRepository;
}
