import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    XFile? selectImage;

    return Scaffold(
      appBar: AppBar(title: Text('Profile', style: theme.textTheme.titleMedium), centerTitle: false,),
      body: Container(padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 4.h),
      child:  Column(
        children: [
          Center(
            child: Stack(
              children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: selectImage == null ? const AssetImage(defaultAvatar) : userModel.pic_url == "default" ? const AssetImage(defaultAvatar) : NetworkImage(selectImage.toString()),
              ),
              Positioned(
                left: 35.w,
                top: 15.h,
                child: IconButton(onPressed: () async {
                  ImagePicker picker = ImagePicker();
                  String uniqueName = userModel.email! + avatar;
                  selectImage = await picker.pickImage(source: ImageSource.gallery);
                  final userAvatar = profileRepository.addUserImage(uniqueName, selectImage);
                }, icon: const Icon(CupertinoIcons.camera)),
              )
              ]
            ),
          )
        ]
      ),),

    );
  }
}