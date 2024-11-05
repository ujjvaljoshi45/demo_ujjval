
class AddressData {
  final String venue;
  final String address;
  final double latitude;
  final double longitude;

  AddressData({
    required this.venue,
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  factory AddressData.fromJson(Map<String, dynamic> json) {
    return AddressData(
      venue: json['venue'],
      address: json['address'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'venue': venue,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
