import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class CameraClass extends StatefulWidget {
  const CameraClass({Key? key}) : super(key: key);

  @override
  _CameraClassState createState() => _CameraClassState();
}

class _CameraClassState extends State<CameraClass> {
  late File fileImage;
  final _pick = ImagePicker();

  openGallery() async {
    var pic = await _pick.pickImage(source: ImageSource.gallery);
    if (pic == null) return;
    final imageTemp = File(pic.path);
    setState(() {
      fileImage = imageTemp;
    });
  }

  _openCamera() async {
try{
  final pic = await _pick.pickImage(
      source: ImageSource.camera, preferredCameraDevice: CameraDevice.rear);
  if (pic == null) return;
  final imageTemp = File(pic.path);

  setState(() {
    fileImage = imageTemp;
  });
}on PlatformException catch(e){
  AlertDialog(
    content: Text("Faild to load the image please try again $e"),
  );
}


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: () {
              openGallery();
            },
            child: Row(
              children: [
                Icon(Icons.photo),
                Text("From Gallery"),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              _openCamera();
            },
            child: Row(
              children: [
                Icon(Icons.linked_camera),
                Text("Take new photo"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
