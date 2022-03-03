import 'package:flutter/material.dart'; 
import 'dart:io';

import 'package:image_picker/image_picker.dart';


class ImagePickerStudy extends StatefulWidget {
  ImagePickerStudy({Key? key}) : super(key: key);

  @override
  State<ImagePickerStudy> createState() => _ImagePickerStudyState();
}

class _ImagePickerStudyState extends State<ImagePickerStudy> {

   dynamic image ;
  final pickfile = ImagePicker();


  uploadImage() async{
    var pickImage = await pickfile.getImage(source: ImageSource.gallery);

      if(pickImage != null){
        setState(() {
           image = File(pickImage.path);
        });
        

      }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker"),),
      body: Column(
        children: [
          Center(child:RaisedButton(child: Text("Upload Image"), onPressed: uploadImage)
          ,),
          image == null ? Text("no image") : Image.file(image)
          
        ],
      ),
    );
  }
}