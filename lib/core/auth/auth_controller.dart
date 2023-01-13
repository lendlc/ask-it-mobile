import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:ask_it/core/auth/auth_model.dart';
import 'package:ask_it/core/auth/auth_repository.dart';
import 'package:ask_it/core/basic_error.dart';
import 'package:ask_it/core/callable_action.dart';
import 'package:ask_it/core/local_storage.dart';
import 'package:ask_it/core/types.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
Future<num?> loggedInUserId(LoggedInUserIdRef ref) {
  final localStorage = ref.watch(localStorageProvider);
  return Future.value(localStorage.read('id'));
}

@riverpod
Future<String?> loggedInUserToken(LoggedInUserTokenRef ref) {
  final localStorage = ref.watch(localStorageProvider);
  return Future.value(localStorage.read('token'));
}

@riverpod
Future<UserProfile> userProfile(UserProfileRef ref) async {
  final authRepository = ref.watch(authRepositoryProvider);
  final profile = await authRepository.getUserProfile();
  return profile;
}

@riverpod
CallableAction<EitherResponse<bool>, void> logout(LogoutRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final localStorage = ref.watch(localStorageProvider);

  return CallableAction((_) async {
    try {
      await authRepository.logout();

      localStorage.remove('id');
      localStorage.remove('token');

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

@riverpod
CallableAction<EitherResponse<bool>, SendPasswordResetEmailDto> sendPasswordResetEmail(
    SendPasswordResetEmailRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return CallableAction((SendPasswordResetEmailDto dto) async {
    try {
      await authRepository.sendPasswordResetEmail(dto);
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
CallableAction<EitherResponse<bool>, ResetPasswordDto> resetPassword(ResetPasswordRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return CallableAction((ResetPasswordDto dto) async {
    try {
      await authRepository.resetPassword(dto);
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
CallableAction<EitherResponse<bool>, ChangePasswordDto> changePassword(ChangePasswordRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return CallableAction((ChangePasswordDto dto) async {
    try {
      await authRepository.changePassword(dto);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    }
  });
}
