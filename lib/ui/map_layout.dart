import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'custom_bottom_sheet.dart';

class MapLayoutStarts extends StatefulWidget {
  const MapLayoutStarts({Key? key}) : super(key: key);

  @override
  _MapLayoutStartsState createState() => _MapLayoutStartsState();
}

class _MapLayoutStartsState extends State<MapLayoutStarts> {
  LatLng point = LatLng(6.5244, 3.3792);

  @override
  Widget build(BuildContext context) {

    return Stack(
      //Some dependencies were added to render the map in app
      //MAP
      children: [
        FlutterMap(
          options: MapOptions(
              center: LatLng(6.5244, 3.3792),
              //allows to position the center of the map at a certain coordinate
              zoom: 10.0),
          layers: [
            TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
            //Marks the current location on the map
            MarkerLayerOptions(markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: point,
                  builder: (ctx) => Icon(
                        FontAwesomeIcons.locationArrow,
                        color: Colors.red,
                        size: 50,
                      ))
            ])
          ],
        ),
        //BOTTOM SHEET
        CustomBottomSheet(),
      ],
    );
  }
}


