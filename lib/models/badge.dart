class Badge {
  final String title;
  final String image;

  Badge({required this.title, required this.image});

  factory Badge.fromJson(Map<String, dynamic> json) {
    return Badge(
      title: json['title'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
    };
  }
}