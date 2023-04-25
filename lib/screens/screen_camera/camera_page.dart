import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<CameraDescription>? cameras;


class Camera extends StatelessWidget {
   Camera({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'camera Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter camera Home Page',
        myCameras: cameras!,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  List<CameraDescription> myCameras;

  MyHomePage({Key? key, required this.title, required this.myCameras})
      : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller =
    new CameraController(widget.myCameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Scaffold(
        body: Container(
          child: Text("NoCamera"),
        ),
      );
    }
    return Scaffold(
        body: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: new CameraPreview(controller),
        ));
  }
}