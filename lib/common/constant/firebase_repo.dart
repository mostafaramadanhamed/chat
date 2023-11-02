import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final commonFirebaseStorageRepositoryProvider=Provider((ref) =>
    CommonFirebaseStorageRepository(
      firebaseStorage:FirebaseStorage.instance,
    ),);

class CommonFirebaseStorageRepository{
  final FirebaseStorage firebaseStorage;

  CommonFirebaseStorageRepository({
    required this.firebaseStorage,
  });
  Future<String>storeFileToFirebase(String ref, File file)async{
 //   UploadTask uploadTask= firebaseStorage.ref().child(ref).putFile(file);
    Reference reference = firebaseStorage.ref(file.path);
    TaskSnapshot snap=await reference.putFile(file);
    String downloadUrl=await snap.ref.getDownloadURL();
    return downloadUrl;
  }
}
/*
 Reference reference = storage.ref(filePath);

  UploadTask uploadTask = reference.putFile(imageToUpload);

  final storageSnapshot = uploadTask.snapshot;

  final downloadUrl = await storageSnapshot.ref.getDownloadURL();
 */
/*
Reference reference = storage.ref(filePath);

  final TaskSnapshot snapshot = await reference.putFile(imageToUpload);

  final downloadUrl = await snapshot.ref.getDownloadURL();
 */