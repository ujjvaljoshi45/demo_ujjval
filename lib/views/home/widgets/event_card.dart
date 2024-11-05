import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event Image with Super User Badge
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://example.com/event_image.jpg', // Replace with actual image URL
                    height: 160,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 16),
                        SizedBox(width: 4),
                        Text(
                          'Super User',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Event Title
            const Text(
              'Fringe Club Event',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            // Venue
            const Row(
              children: [
                Icon(Icons.location_on, color: Colors.green, size: 16),
                SizedBox(width: 4),
                Expanded(
                  child: Text(
                    'Gelora Bung Karno Stadium',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            // Date and Time
            const Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.green, size: 16),
                SizedBox(width: 4),
                Text(
                  'November 15, 2023 | 02:00pm - 03:00pm',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Guest Images and Count
            Row(
              children: [
                // Sample guest images
                for (var i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(
                          'https://example.com/guest_image_$i.jpg'), // Replace with guest image URLs
                    ),
                  ),
                const Text(
                  '+30',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Tags
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildTagChip('Wine', Icons.wine_bar),
                const SizedBox(width: 4),
                _buildTagChip('Music', Icons.music_note),
                const SizedBox(width: 4),
                _buildTagChip('Love', Icons.favorite),
                const SizedBox(width: 4),
                _buildTagChip('Peace', Icons.self_improvement),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build each tag chip
  Widget _buildTagChip(String label, IconData icon) {
    return Chip(
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      backgroundColor: Colors.grey[200],
      avatar: Icon(icon, color: Colors.black54, size: 16),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black54,
        ),
      ),
    );
  }
}
