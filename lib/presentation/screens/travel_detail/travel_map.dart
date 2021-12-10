import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TravelMap extends StatefulWidget {
  const TravelMap({Key? key}) : super(key: key);

  @override
  _TravelMapState createState() => _TravelMapState();
}

class _TravelMapState extends State<TravelMap> {
  final LatLng _currentPostion = const LatLng(21.0379, 105.8111);
  late GoogleMapController _mapController;

  final Set<Marker> _markers = {};

  void addMarker() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_currentPostion.toString()),
        position: _currentPostion,
        infoWindow: const InfoWindow(
          title: 'Your are here',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (GoogleMapController controller) {
        _mapController = controller;
        _mapController.animateCamera(
          CameraUpdate.newLatLngZoom(
            _currentPostion,
            18.0, // Zoom factor
          ),
        );
        addMarker();
      },
      markers: _markers,
      myLocationButtonEnabled: true,
      zoomControlsEnabled: false,
      myLocationEnabled: true,
      initialCameraPosition: CameraPosition(
        target: _currentPostion,
        zoom: 15.0,
      ),
    );
  }
}
