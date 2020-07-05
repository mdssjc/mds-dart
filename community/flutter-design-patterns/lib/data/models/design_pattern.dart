class DesignPattern {
  final String id;
  final String title;
  final String description;
  final String route;

  DesignPattern({
    this.id,
    this.title,
    this.description,
    this.route,
  });

  factory DesignPattern.fromJson(Map<String, dynamic> json) {
    return DesignPattern(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      route: json['route'],
    );
  }
}
