import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_application_2/contsnts.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
final String localuserId = math.Random().nextInt(100000).toString();
class MyCall extends StatelessWidget {
  const MyCall({super.key,required this.callID});
  final String callID;
  

  @override
  Widget build(BuildContext context) {
     return ZegoUIKitPrebuiltCall(
      appID: MyConstants.appID,
      appSign: MyConstants.appSign, 
      userID: localuserId,
      userName: 'user_$localuserId',
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall() 
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
