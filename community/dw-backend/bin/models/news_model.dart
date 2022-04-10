import 'dart:convert';

class NewsModel {
  final int id;
  final String title;
  final String description;
  final String image;
  final DateTime published;
  final DateTime? updated;

  NewsModel(
    this.id,
    this.title,
    this.description,
    this.image,
    this.published,
    this.updated,
  );

  @override
  String toString() {
    return 'NewsModel(id: $id, title: $title, description: $description, image: $image, published: $published, updated: $updated)';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'published': published.millisecondsSinceEpoch,
      'updated': updated?.millisecondsSinceEpoch,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      map['id']?.toInt() ?? 0,
      map['title'] ?? '',
      map['description'] ?? '',
      map['image'] ?? '',
      DateTime.fromMillisecondsSinceEpoch(map['published']),
      map['updated'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updated'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsModel.fromJson(String source) =>
      NewsModel.fromMap(json.decode(source));
}
