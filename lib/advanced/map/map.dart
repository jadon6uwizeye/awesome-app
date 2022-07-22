import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const initialCameraPosition =
      CameraPosition(target: LatLng(1.9441, 30.0619), zoom: 11.5);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        myLocationEnabled: true,
        mapType: MapType.hybrid,
        compassEnabled: true,
        rotateGesturesEnabled: true,
        scrollGesturesEnabled: true,
        tiltGesturesEnabled: true,
        zoomGesturesEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}
