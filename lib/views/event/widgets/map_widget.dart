import 'package:demo_ujjval/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key, required this.latitude, required this.longitude});
  final double latitude;
  final double longitude;
  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: AppColors.main, width: 2.w)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.r),
        child: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(widget.latitude, widget.longitude),
            initialZoom: 9.2,
          ),
          children: [
            TileLayer(
              // using osm for loading map
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.demo_ujjval',
            ),
            MarkerLayer(markers: [
              Marker(
                point: LatLng(widget.latitude, widget.longitude),
                child: FaIcon(
                  FontAwesomeIcons.locationPin,
                  size: 22.sp,
                ),
              ),
            ]),
            RichAttributionWidget(
              attributions: [
                TextSourceAttribution(
                  'OpenStreetMap contributors',
                  onTap: () => launchUrl(
                    Uri.parse('https://openstreetmap.org/copyright'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
