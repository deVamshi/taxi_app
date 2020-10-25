import 'dart:async';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

class Uploaddetails {
  // int _status;

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> upload(List details) async {
    User user = _auth.currentUser;
    String uid = user.uid;
    CollectionReference userdetails =
        FirebaseFirestore.instance.collection("user_details");
    userdetails.doc(uid).set({"details": details});
  }

  Future<void> uploadfile() async {
    //  FilePickerResult result = await FilePicker.platform.pickFiles();
    FilePickerResult result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      File files = File(result.files.single.path);
      StorageReference storageReference =
          FirebaseStorage().ref().child("/driving licence/${file.name}");
      StorageUploadTask uploadTask = await storageReference.putFile(files);

      await uploadTask.onComplete;

      String url = await storageReference.getDownloadURL();
      User user = _auth.currentUser;
      String uid = user.uid;
      CollectionReference userdetails =
          FirebaseFirestore.instance.collection("user_details");
      print("uel is $url");
      userdetails.doc(uid).update({"data": url});

      print("compleate");
    } else {
      print("something error occured");
      // User canceled the picker
    }
  }
}
