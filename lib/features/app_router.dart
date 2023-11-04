
import 'dart:io';

import 'package:chat/features/select_contact/screens/select_contact_screen.dart';
import 'package:chat/features/status/screens/confirm_status.dart';
import 'package:chat/features/status/screens/status_screen.dart';
import 'package:flutter/material.dart';


import '../common/widgets/error.dart';
import '../models/status_model.dart';
import 'auth/screens/login.dart';
import 'auth/screens/otb_screen.dart';
import 'auth/screens/user_info.dart';
import 'chat/screens/mobile_chat.dart';

Route<dynamic>generateRoute(RouteSettings settings){
  switch(settings.name){
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context){
        return const LoginScreen();
      });
    case OtbScreen.routeName:
      final String verificationId=settings.arguments as String;
      return MaterialPageRoute(builder: (context){
        return  OtbScreen(verificationId: verificationId,);
      });
    case UserInformationScreen.routeName:
      return MaterialPageRoute(builder: (context){
        return  const UserInformationScreen();
      });
    case ContactScreen.routeName:
      return MaterialPageRoute(builder: (context){
        return  const ContactScreen();
      });
      case StatusScreen.routeName:
    return MaterialPageRoute(builder: (context){
      final status=settings.arguments as StatusModel;
      return   StatusScreen(status: status);
    });
    case  MobileChatScreen.routeName:
      return MaterialPageRoute(builder: (context){
        final arguments=settings.arguments as Map<String,dynamic>;
        final name=arguments['name'];
        final uid=arguments['uid'];
        return  MobileChatScreen(name: name,uid: uid,);
      });
   case  ConfirmStatusScreen.routeName:
      return MaterialPageRoute(builder: (context){
        final file=settings.arguments as File;
        return  ConfirmStatusScreen(file: file,);
      });
    default:
      return MaterialPageRoute(builder: (context){
        return const Scaffold(
          body: ErrorScreen(error: 'page dose n\'t exist'),
        );
      });
  }

}