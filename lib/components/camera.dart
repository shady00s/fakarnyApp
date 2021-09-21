import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
class CameraClass extends StatefulWidget {
  const CameraClass({Key? key}) : super(key: key);

  @override
  _CameraClassState createState() => _CameraClassState();
}

class _CameraClassState extends State<CameraClass> {
  late XFile fileImage;
  final _pick = ImagePicker();

  _openGallery () async{
    var  pic = await _pick.pickImage(source: ImageSource.gallery);
    this.setState(() {

      fileImage = pic! ;
    });

  }

  _openCamera () async{
    var  pic = await _pick.pickImage(source: ImageSource.camera,preferredCameraDevice: CameraDevice.rear);
    this.setState(() {

      fileImage = pic! ;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MaterialButton(
            onPressed: (){
              _openGallery();
            },
            child: Text("Gallery"),
          ),
          MaterialButton(
            onPressed: (){
              _openCamera();
            },
            child: Text("Gallery"),
          ),
        ],
      ),
    );
  }
}
