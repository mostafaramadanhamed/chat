import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/constant/app_assets.dart';
import '../../../models/status_model.dart';
import '../../../models/user_models.dart';
import '../../auth/controller/auth_controller.dart';
import '../repository/status_repository.dart';


final statusControllerProvider=Provider((ref) {
final statusRepository=ref.read(statusRepositoryProvider);
return StatusController(statusRepository: statusRepository, ref: ref);
});


class StatusController{

  final StatusRepository statusRepository;

  final ProviderRef ref;

  StatusController({
    required this.statusRepository,
    required this.ref,
  });
  void addStatus(File file,BuildContext context){
    debugPrint(file.path);
    ref.watch(userDataAuthProvider).whenData((UserModel  ?value) {
      if (value != null) {
        statusRepository.uploadStatus(userName: value.name,
          profilePic: value.profilePic,
          phoneNumber: value.phoneNumber,
          statusImage: file,
          context: context,);
      }
      else {
        statusRepository.uploadStatus(userName: 'mo',
          profilePic: AppAssets.oTBProfileImage,
          phoneNumber: '+201558414484',
          statusImage: file,
          context: context,);
      }
    });
  }

  Future<List<StatusModel>>getStatus(BuildContext context)async{
    List<StatusModel>status=await statusRepository.getStatus(context);
    return status;
  }
}