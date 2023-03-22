// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  num get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;
  VideoUploader get tutor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {num id,
      String title,
      String description,
      String file,
      VideoUploader tutor});

  $VideoUploaderCopyWith<$Res> get tutor;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? file = null,
    Object? tutor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      tutor: null == tutor
          ? _value.tutor
          : tutor // ignore: cast_nullable_to_non_nullable
              as VideoUploader,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoUploaderCopyWith<$Res> get tutor {
    return $VideoUploaderCopyWith<$Res>(_value.tutor, (value) {
      return _then(_value.copyWith(tutor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$_VideoCopyWith(_$_Video value, $Res Function(_$_Video) then) =
      __$$_VideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      String title,
      String description,
      String file,
      VideoUploader tutor});

  @override
  $VideoUploaderCopyWith<$Res> get tutor;
}

/// @nodoc
class __$$_VideoCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res, _$_Video>
    implements _$$_VideoCopyWith<$Res> {
  __$$_VideoCopyWithImpl(_$_Video _value, $Res Function(_$_Video) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? file = null,
    Object? tutor = null,
  }) {
    return _then(_$_Video(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      tutor: null == tutor
          ? _value.tutor
          : tutor // ignore: cast_nullable_to_non_nullable
              as VideoUploader,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Video extends _Video {
  const _$_Video(
      {required this.id,
      required this.title,
      required this.description,
      required this.file,
      required this.tutor})
      : super._();

  factory _$_Video.fromJson(Map<String, dynamic> json) =>
      _$$_VideoFromJson(json);

  @override
  final num id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String file;
  @override
  final VideoUploader tutor;

  @override
  String toString() {
    return 'Video(id: $id, title: $title, description: $description, file: $file, tutor: $tutor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Video &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.tutor, tutor) || other.tutor == tutor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, file, tutor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoCopyWith<_$_Video> get copyWith =>
      __$$_VideoCopyWithImpl<_$_Video>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoToJson(
      this,
    );
  }
}

abstract class _Video extends Video {
  const factory _Video(
      {required final num id,
      required final String title,
      required final String description,
      required final String file,
      required final VideoUploader tutor}) = _$_Video;
  const _Video._() : super._();

  factory _Video.fromJson(Map<String, dynamic> json) = _$_Video.fromJson;

  @override
  num get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get file;
  @override
  VideoUploader get tutor;
  @override
  @JsonKey(ignore: true)
  _$$_VideoCopyWith<_$_Video> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoUploader _$VideoUploaderFromJson(Map<String, dynamic> json) {
  return _VideoUploader.fromJson(json);
}

/// @nodoc
mixin _$VideoUploader {
  VideoUploaderUser get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoUploaderCopyWith<VideoUploader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoUploaderCopyWith<$Res> {
  factory $VideoUploaderCopyWith(
          VideoUploader value, $Res Function(VideoUploader) then) =
      _$VideoUploaderCopyWithImpl<$Res, VideoUploader>;
  @useResult
  $Res call(
      {VideoUploaderUser user,
      @JsonKey(name: 'created_at') DateTime createdAt});

  $VideoUploaderUserCopyWith<$Res> get user;
}

/// @nodoc
class _$VideoUploaderCopyWithImpl<$Res, $Val extends VideoUploader>
    implements $VideoUploaderCopyWith<$Res> {
  _$VideoUploaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as VideoUploaderUser,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoUploaderUserCopyWith<$Res> get user {
    return $VideoUploaderUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VideoUploaderCopyWith<$Res>
    implements $VideoUploaderCopyWith<$Res> {
  factory _$$_VideoUploaderCopyWith(
          _$_VideoUploader value, $Res Function(_$_VideoUploader) then) =
      __$$_VideoUploaderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoUploaderUser user,
      @JsonKey(name: 'created_at') DateTime createdAt});

  @override
  $VideoUploaderUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_VideoUploaderCopyWithImpl<$Res>
    extends _$VideoUploaderCopyWithImpl<$Res, _$_VideoUploader>
    implements _$$_VideoUploaderCopyWith<$Res> {
  __$$_VideoUploaderCopyWithImpl(
      _$_VideoUploader _value, $Res Function(_$_VideoUploader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? createdAt = null,
  }) {
    return _then(_$_VideoUploader(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as VideoUploaderUser,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoUploader extends _VideoUploader {
  const _$_VideoUploader(
      {required this.user,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  factory _$_VideoUploader.fromJson(Map<String, dynamic> json) =>
      _$$_VideoUploaderFromJson(json);

  @override
  final VideoUploaderUser user;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'VideoUploader(user: $user, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoUploader &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoUploaderCopyWith<_$_VideoUploader> get copyWith =>
      __$$_VideoUploaderCopyWithImpl<_$_VideoUploader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoUploaderToJson(
      this,
    );
  }
}

abstract class _VideoUploader extends VideoUploader {
  const factory _VideoUploader(
          {required final VideoUploaderUser user,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$_VideoUploader;
  const _VideoUploader._() : super._();

  factory _VideoUploader.fromJson(Map<String, dynamic> json) =
      _$_VideoUploader.fromJson;

  @override
  VideoUploaderUser get user;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_VideoUploaderCopyWith<_$_VideoUploader> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoUploaderUser _$VideoUploaderUserFromJson(Map<String, dynamic> json) {
  return _VideoUploaderUser.fromJson(json);
}

/// @nodoc
mixin _$VideoUploaderUser {
  num get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'get_full_name')
  String get fullName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoUploaderUserCopyWith<VideoUploaderUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoUploaderUserCopyWith<$Res> {
  factory $VideoUploaderUserCopyWith(
          VideoUploaderUser value, $Res Function(VideoUploaderUser) then) =
      _$VideoUploaderUserCopyWithImpl<$Res, VideoUploaderUser>;
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'get_full_name') String fullName,
      String username,
      String email});
}

/// @nodoc
class _$VideoUploaderUserCopyWithImpl<$Res, $Val extends VideoUploaderUser>
    implements $VideoUploaderUserCopyWith<$Res> {
  _$VideoUploaderUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoUploaderUserCopyWith<$Res>
    implements $VideoUploaderUserCopyWith<$Res> {
  factory _$$_VideoUploaderUserCopyWith(_$_VideoUploaderUser value,
          $Res Function(_$_VideoUploaderUser) then) =
      __$$_VideoUploaderUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'get_full_name') String fullName,
      String username,
      String email});
}

/// @nodoc
class __$$_VideoUploaderUserCopyWithImpl<$Res>
    extends _$VideoUploaderUserCopyWithImpl<$Res, _$_VideoUploaderUser>
    implements _$$_VideoUploaderUserCopyWith<$Res> {
  __$$_VideoUploaderUserCopyWithImpl(
      _$_VideoUploaderUser _value, $Res Function(_$_VideoUploaderUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_$_VideoUploaderUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoUploaderUser extends _VideoUploaderUser {
  const _$_VideoUploaderUser(
      {required this.id,
      @JsonKey(name: 'get_full_name') required this.fullName,
      required this.username,
      required this.email})
      : super._();

  factory _$_VideoUploaderUser.fromJson(Map<String, dynamic> json) =>
      _$$_VideoUploaderUserFromJson(json);

  @override
  final num id;
  @override
  @JsonKey(name: 'get_full_name')
  final String fullName;
  @override
  final String username;
  @override
  final String email;

  @override
  String toString() {
    return 'VideoUploaderUser(id: $id, fullName: $fullName, username: $username, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoUploaderUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, username, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoUploaderUserCopyWith<_$_VideoUploaderUser> get copyWith =>
      __$$_VideoUploaderUserCopyWithImpl<_$_VideoUploaderUser>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoUploaderUserToJson(
      this,
    );
  }
}

abstract class _VideoUploaderUser extends VideoUploaderUser {
  const factory _VideoUploaderUser(
      {required final num id,
      @JsonKey(name: 'get_full_name') required final String fullName,
      required final String username,
      required final String email}) = _$_VideoUploaderUser;
  const _VideoUploaderUser._() : super._();

  factory _VideoUploaderUser.fromJson(Map<String, dynamic> json) =
      _$_VideoUploaderUser.fromJson;

  @override
  num get id;
  @override
  @JsonKey(name: 'get_full_name')
  String get fullName;
  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_VideoUploaderUserCopyWith<_$_VideoUploaderUser> get copyWith =>
      throw _privateConstructorUsedError;
}
