import 'package:auto_route/auto_route.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/core/routes/routes.gr.dart';
import 'package:flutter_firebase_parfumery/core/styles/widget/button_styles.dart';
import 'package:flutter_firebase_parfumery/main/bloc/profile/profile_bloc.dart';
import 'package:flutter_firebase_parfumery/widgets/show_loading_circle.dart';
import 'package:flutter_firebase_parfumery/widgets/show_snack_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../../core/styles/widget/text_form_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
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
          AutoRouter.of(context).push(BottomNavigation(response: recomendationList));
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
                  SizedBox(
                    height: 25.h,
                    width: 50.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(350),
                        child: userModel.pic_url == "default"
                            ? Image.asset(defaultAvatar, fit: BoxFit.cover,)
                            : Image.network(userModel.pic_url!,fit: BoxFit.cover,)
                      ),
                  ),
                  Positioned(
                    left: 38.w,
                    top: 15.h,
                    child: IconButton(
                        onPressed: () async {
                          ImagePicker picker = ImagePicker();
                          selectImage = await picker.pickImage(source: ImageSource.gallery);
                        },
                        icon: const Icon(CupertinoIcons.camera)),
                  )
                ]),
              ),
              SizedBox(height: 5.h,),
              main_textFormField(controller: emailController, icon: Icons.email, hint: email, initVal: userModel.email ?? '',),
              main_textFormField(controller: passwordController, icon: Icons.lock, hint: password,initVal:  userModel.password ?? ''),
              main_textFormField(controller: phoneNumberController, icon: Icons.phone, hint: phoneNumber,initVal:  userModel.phoneNumber ?? ''),
              main_textFormField(controller: userNameController, icon: Icons.man, hint: userName,initVal:  userModel.username ?? ''),
              Container(
                width: 100.w,
                height: 6.h,
                decoration: auth_button_container,
                child: TextButton(onPressed: (){
                if(emailController.text == userModel.email || passwordController.text == userModel.password || phoneNumberController.text == userModel.phoneNumber || userNameController == userModel.username || selectImage != userModel.pic_url){
                  ScaffoldMessenger.of(context)..clearSnackBars..showSnackBar(materialBanner(oops, 'You dont Change any parameters', ContentType.failure));
                }
                else if(emailController.text.isEmpty && passwordController.text.isEmpty && phoneNumberController.text.isEmpty && userNameController.text.isEmpty){
                  ScaffoldMessenger.of(context)..clearSnackBars..showSnackBar(materialBanner(oops, 'All fields cannot be empty', ContentType.failure));
                }
                else{
                }
                blocCommand.add(ProfileEvent(uniqueName: userModel.email! + avatar, selectedImage: selectImage));
                }, child: Text('Save info', style: textStylePicker(context).displayMedium)),
              )
            ]),
          ),
        );
      },
    );
  }
}
