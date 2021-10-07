class NewsResponse {
  String? status;
  String? source;
  String? sortBy;
  List<Articles>? articles;

  NewsResponse({this.status, this.source, this.sortBy, this.articles});

  NewsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    source = json['source'];
    sortBy = json['sortBy'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles!.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['source'] = this.source;
    data['sortBy'] = this.sortBy;

    data['articles'] = this.articles!.map((v) => v.toJson()).toList();

    return data;
  }
}

class Articles {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;

  Articles(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt});

  Articles.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    return data;
  }
}
