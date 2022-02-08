import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'package:twinkle_assesment_app/services/firebase_services.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key? key}) : super(key: key);
  static String route = 'CreatePostScreen';

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  String? title, body, source;

  File? selectedImage;

  final List<firebase_storage.UploadTask> _uploadTasks = [];

  bool _isLoading = false;
  CrudMethods crudMethods = CrudMethods();

  Future getImage() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      selectedImage = File(image!.path); // won't have any error now
    });
  }

  // uploadContent() async {
  Future<firebase_storage.UploadTask?> uploadFile(File? selectedImage) async {
    if (selectedImage != null) {
      setState(() {
        _isLoading = true;
      });
      firebase_storage.UploadTask uploadTask;

      print('pagep page page');

      // Create a Reference to the file
      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('playground')
          .child('/some-image.jpg');

      final metadata = firebase_storage.SettableMetadata(
          contentType: 'image/jpeg',
          customMetadata: {'${randomAlphaNumeric(9)}.jpg': selectedImage.path});

      if (kIsWeb) {
        uploadTask = ref.putData(await selectedImage.readAsBytes(), metadata);
      } else {
        uploadTask = ref.putFile(selectedImage, metadata);
      }

      if (kDebugMode) {
        print('check for obkrcyhere');
      }
      return Future.value(uploadTask);
    }

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('No file was selected'),
    ));

    return null;
  }
//  }

  Future getImag() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      selectedImage = File(image!.path); // won't have any error now
    });
  }

  // File? safeNeuralNetwork;

//
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: _isLoading
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.4,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ],
                )
              : Container(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: (Column(
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.175),
                          const Text(
                            'Create Post',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: width * 0.15,
                          ),
                          TextButton(
                            onPressed: () => uploadFile(selectedImage),
                            //uploadContent,
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          getImage();
                        },
                        child: selectedImage != null
                            ? Container(
                                height: height * 0.2,
                                width: width,
                                child: Image.file(
                                  selectedImage!,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Container(
                                height: height * 0.2,
                                width: width,
                                decoration: const BoxDecoration(
                                  color: Color(0xffEFEFEF),
                                ),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.blue,
                                ),
                              ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Title:',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff797979))),
                        validator: null,
                        onSaved: (value) {
                          title = value;
                          if (kDebugMode) {
                            print('$value');
                          }
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Body:',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff797979))),
                        validator: null,
                        onSaved: (value) {
                          body = value;
                          if (kDebugMode) {
                            print('$value');
                          }
                        },
                      ),
                    ],
                  )),
                ),
        ),
      ),
    );
  }
}
    
  

     
  


      // Crudmethods crudeMethods = Crudmethods();
      // var selectedimage;
      // bool _isloading = false;

      // Future getImage() async {
      //   final ImagePicker _picker = ImagePicker();
      //   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

      //   setState(() {
      //     selectedimage = image;
      //   });
      // } // pick image from galery
  // }












  
//   Future getImage() async {
//     var image = await ImagePicker().pickImage(source: ImageSource.gallery);

//     setState(() {
//       selectedImage = File(image!.path); // won't have any error now

//       uploadContent() async {
//         if (selectedImage != null) {
//           setState(() {
//             _isLoading = true;
//           });
// //image Upload to fireBase
//           Reference firebaseStoragrRef = FirebaseStorage.instance
//               .ref()
//               .child('blogimage')
//               .child('${randomAlphaNumeric(9)}.jpg');
//           final UploadTask task = firebaseStoragrRef.putFile(selectedImage!);

//           var downloadUrl = await (await task).ref.getDownloadURL();
//           print('tis is the url $downloadUrl');
//         } else {}}









//Ltest Version1

//   if (selectedImage != null) {
//       setState(() {
//         _isLoading = true;
//       });
// //image Upload to fireBase
//       Reference firebaseStoragrRef = FirebaseStorage.instance
//           .ref()
//           .child('blogimage')
//           .child('${randomAlphaNumeric(9)}.jpg');
//       UploadTask task =
//           firebaseStoragrRef.child(toString() + ".jpg").putFile(selectedImage!);
//       // firebaseStoragrRef.putFile(selectedImage!);
//       TaskSnapshot taskSnapshot = await task;

//       var downloadUrl = await (await task).ref.getDownloadURL();
//       var url = downloadUrl.toString();
//       print(url);
//       print('tis is the url $downloadUrl');
//     } else {}