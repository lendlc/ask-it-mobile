import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_dto.freezed.dart';
part 'video_dto.g.dart';

@freezed
class UploadVideoDto with _$UploadVideoDto {
  const factory UploadVideoDto({
    required String title,
    required String description,
    required File file,
  }) = _UploadVideoDto;

  const UploadVideoDto._();
}

@freezed
class UpdateVideoDto with _$UpdateVideoDto {
  const factory UpdateVideoDto({
    required String title,
    required String description,
  }) = _UpdateVideoDto;

  const UpdateVideoDto._();

  factory UpdateVideoDto.fromJson(Map<String, dynamic> json) => _$UpdateVideoDtoFromJson(json);
}
