/// A result that is returned from the search engine.
class Result {
  /// Construct a [Result].
  const Result({
    required this.image,
    required this.title,
    required this.description,
  });

  /// The url of this image.
  final String image;

  /// The title, normally the character name.
  final String title;

  /// The description of the character.
  final String description;
}
