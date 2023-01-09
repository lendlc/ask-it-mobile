import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:ask_it/core/auth/auth_repository.dart';
import 'package:ask_it/core/basic_error.dart';
import 'package:ask_it/core/callable_action.dart';
import 'package:ask_it/core/local_storage.dart';
import 'package:ask_it/core/types.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
String? loggedInUserId(LoggedInUserIdRef ref) {
  final localStorage = ref.watch(localStorageProvider);
  return localStorage.read('id');
}

@riverpod
String? loggedInUserToken(LoggedInUserTokenRef ref) {
  final localStorage = ref.watch(localStorageProvider);
  return localStorage.read('token');
}

@riverpod
CallableAction<EitherResponse<bool>, RegisterDto> register(RegisterRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return CallableAction((RegisterDto dto) async {
    try {
      await authRepository.register(dto);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    }
  });
}

@riverpod
CallableAction<EitherResponse<bool>, LoginDto> login(LoginRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final localStorage = ref.watch(localStorageProvider);

  return CallableAction((LoginDto dto) async {
    try {
      final response = await authRepository.login(dto);

      localStorage.write('id', response.id);
      localStorage.write('token', response.token);

      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    }
  });
}
