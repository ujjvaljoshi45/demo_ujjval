import 'package:demo_ujjval/models/activities.dart';
import 'package:demo_ujjval/models/address_data.dart';
import 'package:demo_ujjval/models/badge.dart';
import 'package:demo_ujjval/models/guest_data.dart';

class Event {
  final String title;
  final String buildingName;
  final String startTime;
  final String date;
  final String timeRange;
  final String description;
  final List<String> tags;
  final String coverImage;
  final List<String> images;
  final Badge badge;
  final List<GuestData> guestPreview;
  final int guestCount;
  final int additionalGuestCount;
  final String info;
  final AddressData addressData;
  final List<Activity> activities;

  Event({
    required this.title,
    required this.buildingName,
    required this.startTime,
    required this.date,
    required this.timeRange,
    required this.description,
    required this.tags,
    required this.coverImage,
    required this.images,
    required this.badge,
    required this.guestPreview,
    required this.guestCount,
    required this.additionalGuestCount,
    required this.addressData,
    required this.info,
    required this.activities,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      title: json['title'],
      buildingName: json['buildingName'],
      startTime: json['startTime'],
      date: json['date'],
      timeRange: json['timeRange'],
      description: json['description'],
      tags: List<String>.from(json['tags']),
      coverImage: json['coverImage'],
      images: List<String>.from(json['images']),
      badge: Badge.fromJson(json['badge']),
      guestPreview: (json['guestPreview'] as List).map((item) => GuestData.fromJson(item)).toList(),
      guestCount: json['guestCount'],
      additionalGuestCount: json['additionalGuestCount'],
      addressData: AddressData.fromJson(
        json['addressData'],
      ),
      info: json['info'],
      activities: (json['activities'] as List<Map<String, dynamic>>)
          .map(
            (e) => Activity.fromJson(e),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'buildingName': buildingName,
      'startTime': startTime,
      'date': date,
      'timeRange': timeRange,
      'description': description,
      'tags': tags,
      'coverImage': coverImage,
      'images': images,
      'badge': badge.toJson(),
      'guestPreview': guestPreview.map((item) => item.toJson()).toList(),
      'guestCount': guestCount,
      'additionalGuestCount': additionalGuestCount,
      'location': addressData.toJson(),
      'info': info,
      'activities': activities
    };
  }
}
