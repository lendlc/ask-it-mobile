// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterDto _$RegisterDtoFromJson(Map<String, dynamic> json) {
  return _RegisterDto.fromJson(json);
}

/// @nodoc
mixin _$RegisterDto {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_name', includeIfNull: false)
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDtoCopyWith<RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDtoCopyWith<$Res> {
  factory $RegisterDtoCopyWith(
          RegisterDto value, $Res Function(RegisterDto) then) =
      _$RegisterDtoCopyWithImpl<$Res, RegisterDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'middle_name', includeIfNull: false) String? middleName,
      @JsonKey(name: 'last_name') String lastName,
      String email,
      String role,
      String password});
}

/// @nodoc
class _$RegisterDtoCopyWithImpl<$Res, $Val extends RegisterDto>
    implements $RegisterDtoCopyWith<$Res> {
  _$RegisterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? middleName = freezed,
    Object? lastName = null,
    Object? email = null,
    Object? role = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterDtoCopyWith<$Res>
    implements $RegisterDtoCopyWith<$Res> {
  factory _$$_RegisterDtoCopyWith(
          _$_RegisterDto value, $Res Function(_$_RegisterDto) then) =
      __$$_RegisterDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'middle_name', includeIfNull: false) String? middleName,
      @JsonKey(name: 'last_name') String lastName,
      String email,
      String role,
      String password});
}

/// @nodoc
class __$$_RegisterDtoCopyWithImpl<$Res>
    extends _$RegisterDtoCopyWithImpl<$Res, _$_RegisterDto>
    implements _$$_RegisterDtoCopyWith<$Res> {
  __$$_RegisterDtoCopyWithImpl(
      _$_RegisterDto _value, $Res Function(_$_RegisterDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? middleName = freezed,
    Object? lastName = null,
    Object? email = null,
    Object? role = null,
    Object? password = null,
  }) {
    return _then(_$_RegisterDto(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterDto extends _RegisterDto {
  const _$_RegisterDto(
      {@JsonKey(name: 'first_name')
          required this.firstName,
      @JsonKey(name: 'middle_name', includeIfNull: false)
          required this.middleName,
      @JsonKey(name: 'last_name')
          required this.lastName,
      required this.email,
      required this.role,
      required this.password})
      : super._();

  factory _$_RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterDtoFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'middle_name', includeIfNull: false)
  final String? middleName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String email;
  @override
  final String role;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterDto(firstName: $firstName, middleName: $middleName, lastName: $lastName, email: $email, role: $role, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterDto &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, middleName, lastName, email, role, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterDtoCopyWith<_$_RegisterDto> get copyWith =>
      __$$_RegisterDtoCopyWithImpl<_$_RegisterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDtoToJson(
      this,
    );
  }
}

abstract class _RegisterDto extends RegisterDto {
  const factory _RegisterDto(
      {@JsonKey(name: 'first_name')
          required final String firstName,
      @JsonKey(name: 'middle_name', includeIfNull: false)
          required final String? middleName,
      @JsonKey(name: 'last_name')
          required final String lastName,
      required final String email,
      required final String role,
      required final String password}) = _$_RegisterDto;
  const _RegisterDto._() : super._();

  factory _RegisterDto.fromJson(Map<String, dynamic> json) =
      _$_RegisterDto.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'middle_name', includeIfNull: false)
  String? get middleName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get email;
  @override
  String get role;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterDtoCopyWith<_$_RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return _LoginDto.fromJson(json);
}

/// @nodoc
mixin _$LoginDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res, LoginDto>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res, $Val extends LoginDto>
    implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginDtoCopyWith<$Res> implements $LoginDtoCopyWith<$Res> {
  factory _$$_LoginDtoCopyWith(
          _$_LoginDto value, $Res Function(_$_LoginDto) then) =
      __$$_LoginDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_LoginDtoCopyWithImpl<$Res>
    extends _$LoginDtoCopyWithImpl<$Res, _$_LoginDto>
    implements _$$_LoginDtoCopyWith<$Res> {
  __$$_LoginDtoCopyWithImpl(
      _$_LoginDto _value, $Res Function(_$_LoginDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_LoginDto(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDto extends _LoginDto {
  const _$_LoginDto({required this.username, required this.password})
      : super._();

  factory _$_LoginDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDtoFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginDtoCopyWith<_$_LoginDto> get copyWith =>
      __$$_LoginDtoCopyWithImpl<_$_LoginDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDtoToJson(
      this,
    );
  }
}

abstract class _LoginDto extends LoginDto {
  const factory _LoginDto(
      {required final String username,
      required final String password}) = _$_LoginDto;
  const _LoginDto._() : super._();

  factory _LoginDto.fromJson(Map<String, dynamic> json) = _$_LoginDto.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDtoCopyWith<_$_LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SendPasswordResetEmailDto _$SendPasswordResetEmailDtoFromJson(
    Map<String, dynamic> json) {
  return _SendPasswordResetEmailDto.fromJson(json);
}

/// @nodoc
mixin _$SendPasswordResetEmailDto {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendPasswordResetEmailDtoCopyWith<SendPasswordResetEmailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPasswordResetEmailDtoCopyWith<$Res> {
  factory $SendPasswordResetEmailDtoCopyWith(SendPasswordResetEmailDto value,
          $Res Function(SendPasswordResetEmailDto) then) =
      _$SendPasswordResetEmailDtoCopyWithImpl<$Res, SendPasswordResetEmailDto>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SendPasswordResetEmailDtoCopyWithImpl<$Res,
        $Val extends SendPasswordResetEmailDto>
    implements $SendPasswordResetEmailDtoCopyWith<$Res> {
  _$SendPasswordResetEmailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendPasswordResetEmailDtoCopyWith<$Res>
    implements $SendPasswordResetEmailDtoCopyWith<$Res> {
  factory _$$_SendPasswordResetEmailDtoCopyWith(
          _$_SendPasswordResetEmailDto value,
          $Res Function(_$_SendPasswordResetEmailDto) then) =
      __$$_SendPasswordResetEmailDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_SendPasswordResetEmailDtoCopyWithImpl<$Res>
    extends _$SendPasswordResetEmailDtoCopyWithImpl<$Res,
        _$_SendPasswordResetEmailDto>
    implements _$$_SendPasswordResetEmailDtoCopyWith<$Res> {
  __$$_SendPasswordResetEmailDtoCopyWithImpl(
      _$_SendPasswordResetEmailDto _value,
      $Res Function(_$_SendPasswordResetEmailDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_SendPasswordResetEmailDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendPasswordResetEmailDto extends _SendPasswordResetEmailDto {
  const _$_SendPasswordResetEmailDto({required this.email}) : super._();

  factory _$_SendPasswordResetEmailDto.fromJson(Map<String, dynamic> json) =>
      _$$_SendPasswordResetEmailDtoFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'SendPasswordResetEmailDto(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendPasswordResetEmailDto &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendPasswordResetEmailDtoCopyWith<_$_SendPasswordResetEmailDto>
      get copyWith => __$$_SendPasswordResetEmailDtoCopyWithImpl<
          _$_SendPasswordResetEmailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendPasswordResetEmailDtoToJson(
      this,
    );
  }
}

abstract class _SendPasswordResetEmailDto extends SendPasswordResetEmailDto {
  const factory _SendPasswordResetEmailDto({required final String email}) =
      _$_SendPasswordResetEmailDto;
  const _SendPasswordResetEmailDto._() : super._();

  factory _SendPasswordResetEmailDto.fromJson(Map<String, dynamic> json) =
      _$_SendPasswordResetEmailDto.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_SendPasswordResetEmailDtoCopyWith<_$_SendPasswordResetEmailDto>
      get copyWith => throw _privateConstructorUsedError;
}

ResetPasswordDto _$ResetPasswordDtoFromJson(Map<String, dynamic> json) {
  return _ResetPasswordDto.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordDto {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password_2')
  String get newPasswordConfirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordDtoCopyWith<ResetPasswordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordDtoCopyWith<$Res> {
  factory $ResetPasswordDtoCopyWith(
          ResetPasswordDto value, $Res Function(ResetPasswordDto) then) =
      _$ResetPasswordDtoCopyWithImpl<$Res, ResetPasswordDto>;
  @useResult
  $Res call(
      {String email,
      String code,
      @JsonKey(name: 'new_password') String newPassword,
      @JsonKey(name: 'new_password_2') String newPasswordConfirmation});
}

/// @nodoc
class _$ResetPasswordDtoCopyWithImpl<$Res, $Val extends ResetPasswordDto>
    implements $ResetPasswordDtoCopyWith<$Res> {
  _$ResetPasswordDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? newPassword = null,
    Object? newPasswordConfirmation = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPasswordConfirmation: null == newPasswordConfirmation
          ? _value.newPasswordConfirmation
          : newPasswordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordDtoCopyWith<$Res>
    implements $ResetPasswordDtoCopyWith<$Res> {
  factory _$$_ResetPasswordDtoCopyWith(
          _$_ResetPasswordDto value, $Res Function(_$_ResetPasswordDto) then) =
      __$$_ResetPasswordDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String code,
      @JsonKey(name: 'new_password') String newPassword,
      @JsonKey(name: 'new_password_2') String newPasswordConfirmation});
}

/// @nodoc
class __$$_ResetPasswordDtoCopyWithImpl<$Res>
    extends _$ResetPasswordDtoCopyWithImpl<$Res, _$_ResetPasswordDto>
    implements _$$_ResetPasswordDtoCopyWith<$Res> {
  __$$_ResetPasswordDtoCopyWithImpl(
      _$_ResetPasswordDto _value, $Res Function(_$_ResetPasswordDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? newPassword = null,
    Object? newPasswordConfirmation = null,
  }) {
    return _then(_$_ResetPasswordDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPasswordConfirmation: null == newPasswordConfirmation
          ? _value.newPasswordConfirmation
          : newPasswordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetPasswordDto extends _ResetPasswordDto {
  const _$_ResetPasswordDto(
      {required this.email,
      required this.code,
      @JsonKey(name: 'new_password') required this.newPassword,
      @JsonKey(name: 'new_password_2') required this.newPasswordConfirmation})
      : super._();

  factory _$_ResetPasswordDto.fromJson(Map<String, dynamic> json) =>
      _$$_ResetPasswordDtoFromJson(json);

  @override
  final String email;
  @override
  final String code;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;
  @override
  @JsonKey(name: 'new_password_2')
  final String newPasswordConfirmation;

  @override
  String toString() {
    return 'ResetPasswordDto(email: $email, code: $code, newPassword: $newPassword, newPasswordConfirmation: $newPasswordConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(
                    other.newPasswordConfirmation, newPasswordConfirmation) ||
                other.newPasswordConfirmation == newPasswordConfirmation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, code, newPassword, newPasswordConfirmation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordDtoCopyWith<_$_ResetPasswordDto> get copyWith =>
      __$$_ResetPasswordDtoCopyWithImpl<_$_ResetPasswordDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResetPasswordDtoToJson(
      this,
    );
  }
}

abstract class _ResetPasswordDto extends ResetPasswordDto {
  const factory _ResetPasswordDto(
      {required final String email,
      required final String code,
      @JsonKey(name: 'new_password')
          required final String newPassword,
      @JsonKey(name: 'new_password_2')
          required final String newPasswordConfirmation}) = _$_ResetPasswordDto;
  const _ResetPasswordDto._() : super._();

  factory _ResetPasswordDto.fromJson(Map<String, dynamic> json) =
      _$_ResetPasswordDto.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;
  @override
  @JsonKey(name: 'new_password_2')
  String get newPasswordConfirmation;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordDtoCopyWith<_$_ResetPasswordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangePasswordDto _$ChangePasswordDtoFromJson(Map<String, dynamic> json) {
  return _ChangePasswordDto.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordDto {
  String get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password_2')
  String get newPasswordConfirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordDtoCopyWith<ChangePasswordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordDtoCopyWith<$Res> {
  factory $ChangePasswordDtoCopyWith(
          ChangePasswordDto value, $Res Function(ChangePasswordDto) then) =
      _$ChangePasswordDtoCopyWithImpl<$Res, ChangePasswordDto>;
  @useResult
  $Res call(
      {String oldPassword,
      @JsonKey(name: 'new_password') String newPassword,
      @JsonKey(name: 'new_password_2') String newPasswordConfirmation});
}

/// @nodoc
class _$ChangePasswordDtoCopyWithImpl<$Res, $Val extends ChangePasswordDto>
    implements $ChangePasswordDtoCopyWith<$Res> {
  _$ChangePasswordDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? newPasswordConfirmation = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPasswordConfirmation: null == newPasswordConfirmation
          ? _value.newPasswordConfirmation
          : newPasswordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordDtoCopyWith<$Res>
    implements $ChangePasswordDtoCopyWith<$Res> {
  factory _$$_ChangePasswordDtoCopyWith(_$_ChangePasswordDto value,
          $Res Function(_$_ChangePasswordDto) then) =
      __$$_ChangePasswordDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String oldPassword,
      @JsonKey(name: 'new_password') String newPassword,
      @JsonKey(name: 'new_password_2') String newPasswordConfirmation});
}

/// @nodoc
class __$$_ChangePasswordDtoCopyWithImpl<$Res>
    extends _$ChangePasswordDtoCopyWithImpl<$Res, _$_ChangePasswordDto>
    implements _$$_ChangePasswordDtoCopyWith<$Res> {
  __$$_ChangePasswordDtoCopyWithImpl(
      _$_ChangePasswordDto _value, $Res Function(_$_ChangePasswordDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? newPasswordConfirmation = null,
  }) {
    return _then(_$_ChangePasswordDto(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPasswordConfirmation: null == newPasswordConfirmation
          ? _value.newPasswordConfirmation
          : newPasswordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangePasswordDto extends _ChangePasswordDto {
  const _$_ChangePasswordDto(
      {required this.oldPassword,
      @JsonKey(name: 'new_password') required this.newPassword,
      @JsonKey(name: 'new_password_2') required this.newPasswordConfirmation})
      : super._();

  factory _$_ChangePasswordDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePasswordDtoFromJson(json);

  @override
  final String oldPassword;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;
  @override
  @JsonKey(name: 'new_password_2')
  final String newPasswordConfirmation;

  @override
  String toString() {
    return 'ChangePasswordDto(oldPassword: $oldPassword, newPassword: $newPassword, newPasswordConfirmation: $newPasswordConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordDto &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(
                    other.newPasswordConfirmation, newPasswordConfirmation) ||
                other.newPasswordConfirmation == newPasswordConfirmation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, oldPassword, newPassword, newPasswordConfirmation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordDtoCopyWith<_$_ChangePasswordDto> get copyWith =>
      __$$_ChangePasswordDtoCopyWithImpl<_$_ChangePasswordDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePasswordDtoToJson(
      this,
    );
  }
}

abstract class _ChangePasswordDto extends ChangePasswordDto {
  const factory _ChangePasswordDto(
          {required final String oldPassword,
          @JsonKey(name: 'new_password')
              required final String newPassword,
          @JsonKey(name: 'new_password_2')
              required final String newPasswordConfirmation}) =
      _$_ChangePasswordDto;
  const _ChangePasswordDto._() : super._();

  factory _ChangePasswordDto.fromJson(Map<String, dynamic> json) =
      _$_ChangePasswordDto.fromJson;

  @override
  String get oldPassword;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;
  @override
  @JsonKey(name: 'new_password_2')
  String get newPasswordConfirmation;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordDtoCopyWith<_$_ChangePasswordDto> get copyWith =>
      throw _privateConstructorUsedError;
}
