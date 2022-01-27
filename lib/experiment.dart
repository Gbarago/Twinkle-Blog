// import 'dart:io';
// import 'package:path/path.dart';

// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// import 'package:image_picker/image_picker.dart';
// //import 'package:random_string/random_string.dart';
// import 'package:twinkle_assesment_app/services/firebase_services.dart';

// class CreatePostScreen extends StatefulWidget {
//   const CreatePostScreen({Key? key}) : super(key: key);
//   static String route = 'CreatePostScreen';

//   @override
//   State<CreatePostScreen> createState() => _CreatePostScreenState();
// }

// class _CreatePostScreenState extends State<CreatePostScreen> {
//   //CrudMethods crudMethods = CrudMethods();
 




  

// //
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: _isLoading
//               ? Container(
//                   alignment: Alignment.center,
//                   child: CircularProgressIndicator(),
//                 )
//               : Container(
//                   padding: EdgeInsets.symmetric(horizontal: width * 0.05),
//                   child: (Column(
//                     children: [
//                       SizedBox(
//                         height: height * 0.01,
//                       ),
//                       Row(
//                         children: [
//                           TextButton(
//                             onPressed: () => Navigator.pop(context),
//                             child: const Text(
//                               'Cancel',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: width * 0.175),
//                           const Text(
//                             'Create Post',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.w600),
//                           ),
//                           SizedBox(
//                             width: width * 0.15,
//                           ),
//                           TextButton(
//                             onPressed: uploadImageToFirebase,
//                             child: const Text(
//                               'Save',
//                               style: TextStyle(
//                                   fontSize: 16, fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox( 
//                         height: height * 0.03,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           getImage();
//                         },
//                         child: _imageFile != null
//                             ? Container(
//                                 height: height * 0.2,
//                                 width: width,
//                                 child: Image.file(
//                                   _imageFile!,
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                             : Container(
//                                 height: height * 0.2,
//                                 width: width,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffEFEFEF),
//                                 ),
//                                 child: const Icon(
//                                   Icons.camera_alt_outlined,
//                                   color: Colors.blue,
//                                 ),
//                               ),
//                       ),
//                       TextFormField(
//                         decoration: const InputDecoration(
//                             hintText: 'Title:',
//                             hintStyle: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14,
//                                 color: Color(0xff797979))),
//                         validator: null,
//                         onSaved: (value) {
//                           title = value;
//                           if (kDebugMode) {
//                             print('$value');
//                           }
//                         },
//                       ),
//                       TextFormField(
//                         decoration: const InputDecoration(
//                             hintText: 'Body:',
//                             hintStyle: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14,
//                                 color: Color(0xff797979))),
//                         validator: null,
//                         onSaved: (value) {
//                           body = value;
//                           if (kDebugMode) {
//                             print('$value');
//                           }
//                         },
//                       ),
//                     ],
//                   )),
//                 ),
//         ),
//       ),
//     );
//   }
// }
    
  

     
  





// // firebase_auth: ^3.3.5
// //   firebase_core: ^1.11.0 
// //   flutter_svg: ^1.0.0
// //   image_picker: ^0.8.4+5
// //   cloud_firestore: ^3.1.6
// //   firebase_storage: ^10.2.5
// //   random_string: ^2.3.1
//  // firebase_analytics: ^5.0.6








  
// //   Future getImage() async {
// //     var image = await ImagePicker().pickImage(source: ImageSource.gallery);

// //     setState(() {
// //       selectedImage = File(image!.path); // won't have any error now

// //       uploadContent() async {
// //         if (selectedImage != null) {
// //           setState(() {
// //             _isLoading = true;
// //           });
// // //image Upload to fireBase
// //           Reference firebaseStoragrRef = FirebaseStorage.instance
// //               .ref()
// //               .child('blogimage')
// //               .child('${randomAlphaNumeric(9)}.jpg');
// //           final UploadTask task = firebaseStoragrRef.putFile(selectedImage!);

// //           var downloadUrl = await (await task).ref.getDownloadURL();
// //           print('tis is the url $downloadUrl');
// //         } else {}}












