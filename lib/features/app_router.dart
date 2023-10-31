
import 'package:flutter/material.dart';


import '../common/widgets/error.dart';
import 'auth/screens/login.dart';

Route<dynamic>generateRoute(RouteSettings settings){
  switch(settings.name){
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context){
        return const LoginScreen();
      });
    // case OtbScreen.routeName:
    //   final String verificationId=settings.arguments as String;
    //   return MaterialPageRoute(builder: (context){
    //     return  OtbScreen(verificationId: verificationId,);
    //   });
    // case UserInformationScreen.routeName:
    //   return MaterialPageRoute(builder: (context){
    //     return  const UserInformationScreen();
    //   });
    // case ContactScreen.routeName:
    //   return MaterialPageRoute(builder: (context){
    //     return  const ContactScreen();
    //   });   case StatusScreen.routeName:
    // return MaterialPageRoute(builder: (context){
    //   final status=settings.arguments as StatusModel;
    //   return   StatusScreen(status: status);
    // });
    // case  MobileChatScreen.routeName:
    //   return MaterialPageRoute(builder: (context){
    //     final arguments=settings.arguments as Map<String,dynamic>;
    //     final name=arguments['name'];
    //     final uid=arguments['uid'];
    //     return  MobileChatScreen(name: name,uid: uid,);
    //   });
    // case  ConfirmStatusScreen.routeName:
    //   return MaterialPageRoute(builder: (context){
    //     final file=settings.arguments as File;
    //     return  ConfirmStatusScreen(file: file,);
    //   });
    default:
      return MaterialPageRoute(builder: (context){
        return const Scaffold(
          body: ErrorScreen(error: 'page dose n\'t exist'),
        );
      });
  }
}