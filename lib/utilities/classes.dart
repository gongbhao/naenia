class Anime {
  final String name;
  final String coverUrl;
  final String? description;
  final DateTime? dateAired;
  final String? type;
  final String? studios;
  final String? status;
  final List<String>? genres;
  final double score;
  final int episodes;

  Anime(
    this.name,
    this.coverUrl,
    this.description,
    this.dateAired,
    this.type,
    this.studios,
    this.status,
    this.genres,
    this.score,
    this.episodes,
  );
}
