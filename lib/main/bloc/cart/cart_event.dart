// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_bloc.dart';

class CartEvent {
  Recommendation currentItem;
  CartEvent({
    required this.currentItem,
  });
}
