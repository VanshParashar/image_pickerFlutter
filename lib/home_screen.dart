import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:get/get.dart';
import 'package:image_pecker/image_picker_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body: Obx((){
        return Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: controller.imagepath.isNotEmpty ? FileImage(File(controller.imagepath.toString())) : null,
              ),
            ),
            TextButton(onPressed: (){
              controller.getImage();
            }, child: Text('Pick Image'))
          ],
        );
      })
    );
  }
}
