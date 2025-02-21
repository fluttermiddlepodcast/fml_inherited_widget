class FMPEpisode {
  final String title;
  final String shortDescription;
  final String logoUrl;
  final String url;

  FMPEpisode(
    this.title,
    this.shortDescription,
    this.logoUrl,
    this.url,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FMPEpisode &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          shortDescription == other.shortDescription &&
          logoUrl == other.logoUrl &&
          url == other.url;

  @override
  int get hashCode => title.hashCode ^ shortDescription.hashCode ^ logoUrl.hashCode ^ url.hashCode;
}
