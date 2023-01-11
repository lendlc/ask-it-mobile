import 'package:ask_it/core/api_call_mixin.dart';
import 'package:ask_it/core/auth/auth_response.dart';
import 'package:ask_it/core/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_dto.dart';
import 'auth_model.dart';

part 'auth_repository.g.dart';

class AuthRepository with ApiCallMixin {
  AuthRepository(this._client);

  final RestClient _client;

  Future<void> register(RegisterDto dto) async {
    return apiCallArgs<void, RegisterDto>(_client.register, dto);
  }

  Future<LoginResponse> login(LoginDto dto) async {
    return apiCallArgs<LoginResponse, LoginDto>(_client.login, dto);
  }

  Future<UserProfile> getUserProfile() async {
    return apiCall(_client.profile);
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final client = ref.watch(RestClient.provider);
  return AuthRepository(client);
}
