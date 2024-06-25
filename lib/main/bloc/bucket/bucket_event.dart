// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bucket_bloc.dart';

class BucketEvent {
  bool ifDelete;
  Cart? cart;
  BucketEvent({
    required this.ifDelete,
    this.cart
  });
}
