class GuestData {
  final String name;
  final String profileImage;

  GuestData({
    required this.name,
    required this.profileImage,
  });

  factory GuestData.fromJson(Map<String, dynamic> json) {
    return GuestData(
      name: json['name'],
      profileImage: json['profileImage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'profileImage': profileImage,
    };
  }
}
