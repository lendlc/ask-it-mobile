// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class Video with _$Video {
  const factory Video({
    required num id,
    required String title,
    required String description,
    required String file,
    required VideoUploader tutor,
  }) = _Video;

  const Video._();

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

@freezed
class VideoUploader with _$VideoUploader {
  const factory VideoUploader({
    required VideoUploaderUser user,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _VideoUploader;

  const VideoUploader._();

  factory VideoUploader.fromJson(Map<String, dynamic> json) => _$VideoUploaderFromJson(json);
}

@freezed
class VideoUploaderUser with _$VideoUploaderUser {
  const factory VideoUploaderUser({
    required num id,
    @JsonKey(name: 'get_full_name') required String fullName,
    required String username,
    required String email,
  }) = _VideoUploaderUser;

  const VideoUploaderUser._();

  factory VideoUploaderUser.fromJson(Map<String, dynamic> json) =>
      _$VideoUploaderUserFromJson(json);
}
