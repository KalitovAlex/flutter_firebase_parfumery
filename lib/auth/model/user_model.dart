import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
    @JsonSerializable(includeIfNull: false)
    const factory UserModel({
        @JsonKey(name: "username")
        String? username,
        @JsonKey(name: "phone_number")
        String? phoneNumber,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: 'uid')
        String? uid
    }) = _UserModel;

    factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

