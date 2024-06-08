import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void showLoadingCircle(context){
  showDialog(barrierColor: Colors.white,context: context, builder: (builder){
    return Center(child: LoadingAnimationWidget.inkDrop(color: Colors.green, size: 50));
  });
}