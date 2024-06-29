import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';

import '../../models/cart/cart.dart';

part 'bucket_event.dart';
part 'bucket_state.dart';

class BucketBloc extends Bloc<BucketEvent, BucketState> {
  BucketBloc() : super(BucketInitial()) {
    on<BucketEvent>((event, emit) async{
      emit(BucketLoading());
      if(event.ifDelete) {
        try{
        final response = await mainRepository.removeCard(event.cart!);
        List<dynamic> list = await mainRepository.getCard();
        allCart = [...list];
        response == true ? emit(BucketLoaded()) : emit(BucketFailure());
        }catch(e){
          talker.error(e);
        }
      }
    });
  }
}
