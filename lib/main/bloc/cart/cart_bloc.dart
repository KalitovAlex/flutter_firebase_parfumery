import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()) {
    on<CartEvent>((event, emit) async{
      final eventI = event.currentItem;
      try{
      bool? response;
      allCart.indexWhere((element) => element == diCart.copyWith(price: eventI.price, title: eventI.title, rating: eventI.rating, picUrls: eventI.picUrls, count: 1)) != -1 ? emit(CartAlready()) :  response = await mainRepository.makeCard(diCart = diCart.copyWith(price: eventI.price, title: eventI.title, rating: eventI.rating, picUrls: eventI.picUrls, count: 1));
      response == true ? emit(CartLoaded()) : response == null ? null : emit(CartFailure());
      }
      catch(e){
        talker.error(e);
      }
    });
  }
}
