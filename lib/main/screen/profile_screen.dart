import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/core/routes/routes.gr.dart';
import 'package:flutter_firebase_parfumery/core/styles/widget/button_styles.dart';
import 'package:flutter_firebase_parfumery/main/bloc/profile/profile_bloc.dart';
import 'package:flutter_firebase_parfumery/widgets/loading_widget.dart';
import 'package:flutter_firebase_parfumery/widgets/show_loading_circle.dart';
import 'package:flutter_firebase_parfumery/widgets/show_snack_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../../core/styles/widget/text_styles.dart';

@RoutePage()
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
  void initState() {
    super.initState();
    emailController.text = userModel.email!;
    passwordController.text = userModel.password!;
    phoneNumberController.text = userModel.phoneNumber!;
    userNameController.text = userModel.username!;
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if(state is ProfileLoading){
          showLoadingCircle(context);
        }
        if(state is ProfileLoaded){
          Navigator.of(context).pop();
          AutoRouter.of(context).push(BottomNavigationRoute(response: recomendationList));
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
            automaticallyImplyLeading: false,
            title: Text('Profile', style: theme.textTheme.titleMedium),
            centerTitle: false,
          ),
          body: Container(
            padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 4.h),
            child: Column(children: [
              Center(child: CachedNetworkImage(
                    imageUrl: defaultImageUrl,
                    imageBuilder: (context, imageProvider) {
                      return Stack(
                        children:[
                        SizedBox(
                        height: 25.h,
                        width: 50.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(350),
                            child: selectImage != null ? 
                            Image.file(File(selectImage!.path), fit: BoxFit.cover,) :
                            userModel.pic_url == "default"
                                ? Container(decoration: BoxDecoration(image: DecorationImage(image: imageProvider,fit: BoxFit.cover)),)
                                : Image.network(userModel.pic_url!,fit: BoxFit.cover,)
                          ),
                        ),
                         Positioned(
                          left: 38.w,
                          top: 15.h,
                          child: IconButton(
                                 onPressed: () async {
                                   ImagePicker picker = ImagePicker();
                                    final image = await picker.pickImage(source: ImageSource.gallery);
                                    setState(() {
                                      selectImage = image;
                                    });
                                    ScaffoldMessenger.of(context)..clearSnackBars..showSnackBar(materialBanner(good, 'Succesfully changed your avatar', ContentType.success));
                                 },
                                 icon: const Icon(CupertinoIcons.camera)),
                        ),
                        ]
                      );
                    },
                    placeholder: (context, url) {
                      return const loadingWidget();
                    },
                    errorWidget: (context, url, error) {
                      talker.log(error);
                      return Image.asset(errorIcon);
                    },
                  ),
              ),
              SizedBox(height: 5.h,),
              Center(child: Container(
                height: 6.h,
                margin: EdgeInsets.only(bottom: 2.h),
                decoration: authTextStyles,
                child: TextFormField(
                  controller: emailController,
                  decoration: textFormFieldRegistrationDecoration(CupertinoIcons.mail_solid, email),
                ),
              ),),
              Center(child: Container(
                height: 6.h,
                margin: EdgeInsets.only(bottom: 2.h),
                decoration: authTextStyles,
                child: TextFormField(
                  controller: passwordController,
                  decoration: textFormFieldRegistrationDecoration(CupertinoIcons.lock_fill, password),
                ),
              ),),
              Center(child: Container(
               height: 6.h,
               margin: EdgeInsets.only(bottom: 2.h),
               decoration: authTextStyles,
               child: TextFormField(
                 controller: phoneNumberController,
                 decoration: textFormFieldRegistrationDecoration(CupertinoIcons.phone_fill, phoneNumber),
               ),
             ),),
             Center(child: Container(
               height: 6.h,
               margin: EdgeInsets.only(bottom: 2.h),
               decoration: authTextStyles,
               child: TextFormField(
                 controller: userNameController,
                 decoration: textFormFieldRegistrationDecoration(CupertinoIcons.person_fill, userName),
               ),
             ),),
              Container(
                width: 100.w,
                height: 6.h,
                decoration: auth_button_container,
                child: TextButton(onPressed: (){
                if(emailController.text == userModel.email && passwordController.text == userModel.password && phoneNumberController.text == userModel.phoneNumber && userNameController == userModel.username && selectImage == userModel.pic_url){
                  ScaffoldMessenger.of(context)..clearSnackBars..showSnackBar(materialBanner(oops, 'You dont Change any parameters', ContentType.failure));
                }
                else if(emailController.text.isEmpty && passwordController.text.isEmpty && phoneNumberController.text.isEmpty && userNameController.text.isEmpty){
                  ScaffoldMessenger.of(context)..clearSnackBars..showSnackBar(materialBanner(oops, 'All fields cannot be empty', ContentType.failure));
                }
                else{
                blocCommand.add(ProfileEvent(uniqueName: userModel.email! + avatar, selectedImage: selectImage, emai: emailController.text,password: passwordController.text, phoneNumber: phoneNumberController.text, username: userNameController.text));}
                }, child: Text('Save info', style: textStylePicker(context).displayMedium)),
              )
            ]),
          ),
        );
      },
    );
  }
}