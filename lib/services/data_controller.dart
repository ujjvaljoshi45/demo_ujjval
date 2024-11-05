import 'package:get/get.dart';

class DataController extends GetxController {
  static final instance = Get.put(DataController());
}

final data = [
  {
    "title": "Fringe Club Event",
    "buildingName": "Fringe Club",
    "startTime": "9:00 PM",
    "date": "December 21",
    "timeRange": "02:00 PM - 03:00 PM",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod quam eu tortor malesuada tincidunt. Ut ut diam placerat, ornare libero vel, luctus tortor. Nullam scelerisque elit arcu. Quisque porta erat eget pretium volutpat.",
    "tags": ["Wine", "Music", "Love", "Peace"],
    "coverImage": "url_to_cover_image",
    "badge": {
      "title": "image.png"
    },
    "guestPreview": [
      {"name": "Jhon Doe", "profileImage": "url_to_profile_image_1"},
      {"name": "Usman Jalal", "profileImage": "url_to_profile_image_2"},
      {"name": "Atif Aslam", "profileImage": "url_to_profile_image_3"},
      {"name": "Jhon Doe", "profileImage": "url_to_profile_image_4"}
    ],
    "guestCount": 36,
    "additionalGuestCount": 30,
    "notification": {
      "message":
          "Nightlife invites you to travel for the 10th time. Don’t Miss it"
    },
    "location": {
      "venue": "Gelora Bung Karno Stadium",
      "address": "209 Soi Thong Lo, Watthana, Thailand",
      "mapCoordinates": {"latitude": "13.7300", "longitude": "100.5693"}
    },
    "actions": {
      "joinButton": "Join Now",
      "chatButton": "Chat Icon URL or Action"
    }
  }
];
