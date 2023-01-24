import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/colors.dart' as color;
import '../widgets/app_drawer.dart';

class LogoManagementScreen extends StatefulWidget {
  const LogoManagementScreen({super.key});

  static const routeName = '/logo_management_screen';

  @override
  State<LogoManagementScreen> createState() => _LogoManagementScreenState();
}

class _LogoManagementScreenState extends State<LogoManagementScreen> {
  XFile? _image;
  final _form = GlobalKey<FormState>();

  var _isImageEmpty = true;

  void _updateImage() {
    setState(() {
      _image = _image as XFile;
    });
  }

  Future _saveForm() async {
    _updateImage();
  }

  _getFromGallery() async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      _image = pickedFile;
      setState(() {
        _isImageEmpty = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: color.kPurple,
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  }),
        ),
        title: const Text("Sheeghra"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: "Logout",
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/signin_screen');
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              color: color.kWhite,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: Text("Logo Management",
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    const Divider(),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Container(
                              height: height / 3,
                              width: height / 3,
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: !_isImageEmpty
                                  ? Text("Image Uploaded",
                                      textAlign: TextAlign.center,
                                      style:
                                          Theme.of(context).textTheme.bodyText1)
                                  // After
                                  // Image.asset(
                                  //     File(_image!.path),
                                  //     fit: BoxFit.cover,
                                  //   )
                                  : IconButton(
                                      icon: const Icon(
                                          Icons.file_upload_outlined),
                                      onPressed: _getFromGallery,
                                    ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Theme.of(context)
                                    .backgroundColor
                                    .withOpacity(0.1),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            child: Text('Save Image'),
                            onPressed: _saveForm,
                          ),
                          const SizedBox(height: 20),
                        ])
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
