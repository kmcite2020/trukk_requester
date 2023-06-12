import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:trukk_driver/core/extensions.dart';

void main() {
  runApp(const MyApp());
}

final MapController _mapController = MapController();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: 'TELLOMERE'.textify(),
        ),
        body: FlutterMap(
          mapController: _mapController,
          options: MapOptions(
            center: const LatLng(
              2,
              2,
            ),
          ),
          nonRotatedChildren: const [],
          children: const [
            // HomePage(),
          ],
        ),
      ),
    );
  }
}
