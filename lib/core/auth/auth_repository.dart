import 'package:ask_it/core/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_dto.dart';

part 'auth_repository.g.dart';

class AuthRepository {
  AuthRepository(this._client);

  final RestClient _client;

  Future<void> register(RegisterDto dto) {
    return _client.register(dto: dto);
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final client = ref.watch(RestClient.provider);
  return AuthRepository(client);
}
