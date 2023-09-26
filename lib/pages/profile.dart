import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  SharedPreferences? _prefs;
  File? _image;

  @override
  void initState() {
    super.initState();
    initSharedPreferences();
  }

  Future<void> initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    loadProfileData();
  }

  void loadProfileData() {
    setState(() {
      nameController.text = _prefs?.getString('name') ?? '';
      phoneController.text = _prefs?.getString('phone') ?? '';
      emailController.text = _prefs?.getString('email') ?? '';
      addressController.text = _prefs?.getString('address') ?? '';
      final imagePath = _prefs?.getString('imagePath');
      if (imagePath != null && imagePath.isNotEmpty) {
        _image = File(imagePath);
      }
    });
  }

  Future<void> _getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void saveProfileData() {
    _prefs?.setString('name', nameController.text);
    _prefs?.setString('phone', phoneController.text);
    _prefs?.setString('email', emailController.text);
    _prefs?.setString('address', addressController.text);
    // Save the image file path to SharedPreferences
    _prefs?.setString('imagePath', _image?.path ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: GestureDetector(
                  onTap: _getImage,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: _image != null ? FileImage(_image!) : null,
                    child: _image == null
                        ? Icon(
                      Icons.camera_alt,
                      size: 50.0,
                    )
                        : null,
                  ),
                ),
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Address'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  saveProfileData();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Profile data saved.'),
                    ),
                  );
                },
                child: Text('Save Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
