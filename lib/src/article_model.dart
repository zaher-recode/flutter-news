class ArticleModel {
  String title;
  String description;
  String urlToImage;
  String content;
  String author;
  String source;
  String sourceId;
  String url;
  DateTime publishedAt; // show as ${timeago.format(y)}

  ArticleModel(
      {this.title,
      this.description,
      this.urlToImage,
      this.content,
      this.author,
      this.source,
      this.sourceId,
      this.url,
      this.publishedAt});

  ArticleModel.fromJson(Map<String, dynamic> parsed) {
    title = parsed['title'] ?? 'No Title';
    description = parsed['description'] ?? 'No Description';
    urlToImage = parsed['urlToImage'] ?? 'https://i.ibb.co/Rzn3kVG/logo.png';
    content = parsed['content'] ?? 'No Content';
    author = parsed['author'] ?? 'Unknown Author';
    if (author.length > 25) {
      author = 'Unknown Author';
    }
    source = parsed['source']['name'] ?? 'Unknown Source';
    sourceId = parsed['source']['id'];

    url = parsed['url'] ?? 'https://www.google.com';
    if (parsed['publishedAt'] != null) {
      publishedAt = DateTime.parse(parsed['publishedAt']);
    } else {
      publishedAt = DateTime.now().subtract(new Duration(hours: 3));
    }
  }
}
