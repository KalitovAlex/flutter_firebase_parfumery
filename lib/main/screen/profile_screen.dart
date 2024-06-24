import 'dart:io';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/bloc/profile/profile_bloc.dart';
import 'package:flutter_firebase_parfumery/widgets/show_loading_circle.dart';
import 'package:flutter_firebase_parfumery/widgets/show_snack_bar.dart';
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

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if(state is ProfileLoading){
          showLoadingCircle(context);
        }
        if(state is ProfileLoaded){
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)..clearSnackBars..showSnackBar(materialBanner(good, 'you succesfully changed profile info', ContentType.success));
        }
        if(state is ProfileFailure){
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)..clearSnackBars..showSnackBar(materialBanner(oops, 'failed, you wrong type info', ContentType.failure));
        }
        if(state is ProfileFirestoreFailure){
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)..clearSnackBars..showSnackBar(materialBanner(oops, 'Our servers are currently sleeping, we will fix this soon, sorry', ContentType.failure));
        }
      },
      builder: (context, state) {
        final blocCommand = BlocProvider.of<ProfileBloc>(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('Profile', style: theme.textTheme.titleMedium),
            centerTitle: false,
          ),
          body: Container(
            padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 4.h),
            child: Column(children: [
              Center(
                child: Stack(children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: selectImage == null
                        ? const AssetImage(defaultAvatar)
                        : userModel.pic_url == "default"
                            ? const AssetImage(defaultAvatar)
                            : FileImage(File(selectImage!.path)),
                  ),
                  Positioned(
                    left: 35.w,
                    top: 15.h,
                    child: IconButton(
                        onPressed: () async {
                          ImagePicker picker = ImagePicker();
                          String uniqueName = userModel.email! + avatar;
                          selectImage = await picker.pickImage(source: ImageSource.gallery);
                          blocCommand.add(ProfileEvent(uniqueName: uniqueName, selectedImage: selectImage));
                        },
                        icon: const Icon(CupertinoIcons.camera)),
                  )
                ]),
              )
            ]),
          ),
        );
      },
    );
  }
}
