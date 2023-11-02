import 'package:chat/features/status/screens/status_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/constant/app_color.dart';
import '../../../common/widgets/loader.dart';
import '../../../models/status_model.dart';
import '../controller/status_controller.dart';


class StatusContactScreen extends ConsumerWidget {
  const StatusContactScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  FutureBuilder<List<StatusModel>>(
      future:ref.read(statusControllerProvider).getStatus(context) ,
      builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return const Loader();
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context,index){
            var statusData=snapshot.data![index];
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(StatusScreen.routeName,arguments: statusData,);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text(
                        statusData.userName,
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          statusData.profilePic,
                        ),
                        radius: 30,
                      ),
                      // trailing: Text(
                      //   DateFormat('hh:mm a').format(statusData.createdAt),
                      //   style: const TextStyle(
                      //     color: Colors.grey,
                      //     fontSize: 13,
                      //   ),
                      // ),
                    ),
                  ),
                ),
                const Divider(color: dividerColor, indent: 85),
              ],
            );

          },);
      },
    );
  }
}
