class Activity {
  final String title;
  final String image;
  Activity({required this.title,required this.image});

  factory Activity.fromJson(Map<String,dynamic> json) => Activity(title: json['title'], image: json['image']);
}