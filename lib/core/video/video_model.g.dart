// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      id: json['id'] as num,
      title: json['title'] as String,
      description: json['description'] as String,
      file: json['file'] as String,
      tutor: VideoUploader.fromJson(json['tutor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'file': instance.file,
      'tutor': instance.tutor,
    };

_$_VideoUploader _$$_VideoUploaderFromJson(Map<String, dynamic> json) =>
    _$_VideoUploader(
      user: VideoUploaderUser.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_VideoUploaderToJson(_$_VideoUploader instance) =>
    <String, dynamic>{
      'user': instance.user,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$_VideoUploaderUser _$$_VideoUploaderUserFromJson(Map<String, dynamic> json) =>
    _$_VideoUploaderUser(
      id: json['id'] as num,
      fullName: json['get_full_name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_VideoUploaderUserToJson(
        _$_VideoUploaderUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'get_full_name': instance.fullName,
      'username': instance.username,
      'email': instance.email,
    };
