// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required num id,
    @JsonKey(name: 'full_name') required String fullName,
    required String email,
    required String role,
  }) = _UserProfile;

  const UserProfile._();

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}
