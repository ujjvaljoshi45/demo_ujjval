abstract class ApiHandler {
  // This api will return the demo data
  static Future<List<Map<String, dynamic>>> fetchDataApi() async => [
        {
          "title": "Fringe Club Event",
          "buildingName": "Fringe Club",
          "startTime": "9:00 PM",
          "date": "December 21",
          "timeRange": "02:00 PM - 03:00 PM",
          "description":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod quam eu tortor malesuada tincidunt. Ut ut diam placerat, ornare libero vel, luctus tortor. Nullam scelerisque elit arcu. Quisque porta erat eget pretium volutpat.",
          "tags": ["Wine", "Music", "Love", "Peace"],
          "coverImage": "assets/demo1.png",
          "images": ["assets/demo1.png", "assets/demo2.png"],
          "badge": {"title": "Super User", "image": "assets/lit.png"},
          "guestPreview": [
            {"name": "Jhon Doe", "profileImage": "assets/avatar1.png"},
            {"name": "Usman Jalal", "profileImage": "assets/avatar2.png"},
            {"name": "Atif Aslam", "profileImage": "assets/avatar3.png"},
            {"name": "Jhon Doe", "profileImage": "assets/avatar4.png"}
          ],
          "guestCount": 36,
          "additionalGuestCount": 30,
          "info": "Nightlife invites you to travel for the 10th time. Don’t Miss it",
          "addressData": {
            "venue": "Gelora Bung Karno Stadium",
            "address": "209 Soi Thong Lo, Watthana, Thailand",
            "latitude": 13.7300,
            "longitude": 100.5693,
          },
          "activities": [
            {
              "title": "Wine",
              "image": "assets/wine.png",
            },
            {
              "title": "Music",
              "image": "assets/music.png",
            },
            {
              "title": "Love",
              "image": "assets/heart.png",
            },
            {
              "title": "Peace",
              "image": "assets/peace.png",
            },
          ]
        },
        {
          "title": "Jazz Night",
          "buildingName": "Blue Note Club",
          "startTime": "9:00 PM",
          "date": "December 21",
          "timeRange": "02:00 PM - 03:00 PM",
          "description":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod quam eu tortor malesuada tincidunt. Ut ut diam placerat, ornare libero vel, luctus tortor. Nullam scelerisque elit arcu. Quisque porta erat eget pretium volutpat.",
          "tags": ["Wine", "Music", "Love", "Peace"],
          "coverImage": "assets/demo2.png",
          "images": ["assets/demo1.png", "assets/car2.png"],
          "badge": {"title": "Rising Star", "image": "assets/star.png"},
          "guestPreview": [
            {"name": "Alice Johnson", "profileImage": "assets/avatar1.png"},
            {"name": "Michael Lee", "profileImage": "assets/avatar2.png"},
            {"name": "Sofia Garza", "profileImage": "assets/avatar3.png"},
            {"name": "Jake Paul", "profileImage": "assets/avatar4.png"}
          ],
          "guestCount": 36,
          "additionalGuestCount": 30,
          "info": "Nightlife invites you to travel for the 10th time. Don’t Miss it",
          "addressData": {
            "venue": "Apollo Theater",
            "address": "253 W 125th St, New York, USA",
            "latitude": 40.8106,
            "longitude": -73.9505,
          },
          "activities": [
            {"title": "Wine", "image": "assets/wine.png"},
            {"title": "Music", "image": "assets/music.png"},
            {"title": "Love", "image": "assets/heart.png"},
            {"title": "Peace", "image": "assets/peace.png"}
          ]
        },
        {
          "title": "Sunset Vibes",
          "buildingName": "Beachfront Lounge",
          "startTime": "9:00 PM",
          "date": "December 21",
          "timeRange": "02:00 PM - 03:00 PM",
          "description":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod quam eu tortor malesuada tincidunt. Ut ut diam placerat, ornare libero vel, luctus tortor. Nullam scelerisque elit arcu. Quisque porta erat eget pretium volutpat.",
          "tags": ["Wine", "Music", "Love", "Peace"],
          "coverImage": "assets/demo3.png",
          "images": ["assets/demo1.png", "assets/car2.png"],
          "badge": {"title": "Super User", "image": "assets/lit.png"},
          "guestPreview": [
            {"name": "John Smith", "profileImage": "assets/avatar1.png"},
            {"name": "Emily Davis", "profileImage": "assets/avatar2.png"},
            {"name": "Oscar Blanco", "profileImage": "assets/avatar3.png"},
            {"name": "Maria Lopez", "profileImage": "assets/avatar4.png"}
          ],
          "guestCount": 36,
          "additionalGuestCount": 30,
          "info": "Nightlife invites you to travel for the 10th time. Don’t Miss it",
          "addressData": {
            "venue": "Bondi Pavilion",
            "address": "Queen Elizabeth Dr, Bondi Beach, Australia",
            "latitude": -33.8908,
            "longitude": 151.2743,
          },
          "activities": [
            {"title": "Wine", "image": "assets/wine.png"},
            {"title": "Music", "image": "assets/music.png"},
            {"title": "Love", "image": "assets/heart.png"},
            {"title": "Peace", "image": "assets/peace.png"}
          ]
        },
        // {
        //   "title": "City Lights Fest",
        //   "buildingName": "Metropolitan Center",
        //   "startTime": "9:00 PM",
        //   "date": "December 21",
        //   "timeRange": "02:00 PM - 03:00 PM",
        //   "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod quam eu tortor malesuada tincidunt. Ut ut diam placerat, ornare libero vel, luctus tortor. Nullam scelerisque elit arcu. Quisque porta erat eget pretium volutpat.",
        //   "tags": ["Wine", "Music", "Love", "Peace"],
        //   "coverImage": "assets/demo1.png",
        //   "images": ["assets/demo1.png", "assets/car2.png"],
        //   "badge": { "title": "Super User", "image": "assets/lit.png" },
        //   "guestPreview": [
        //     { "name": "Emma Brown", "profileImage": "assets/avatar1.png" },
        //     { "name": "David Green", "profileImage": "assets/avatar2.png" },
        //     { "name": "Liam Scott", "profileImage": "assets/avatar3.png" },
        //     { "name": "Olivia White", "profileImage": "assets/avatar4.png" }
        //   ],
        //   "guestCount": 36,
        //   "additionalGuestCount": 30,
        //   "info": "Nightlife invites you to travel for the 10th time. Don’t Miss it",
        //   "addressData": {
        //     "venue": "Sky Tower",
        //     "address": "Victoria St W, Auckland, New Zealand",
        //     "latitude": "-36.8485",
        //     "longitude": "174.7633",
        //   },
        //   "activities": [
        //     { "title": "Wine", "image": "assets/wine.png" },
        //     { "title": "Music", "image": "assets/music.png" },
        //     { "title": "Love", "image": "assets/heart.png" },
        //     { "title": "Peace", "image": "assets/peace.png" }
        //   ]
        // }
      ];
}
