// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$loggedInUserIdHash() => r'a6ccd8c6c83732ba7a4ec4958a02abcb2f31f33e';

/// See also [loggedInUserId].
final loggedInUserIdProvider = AutoDisposeFutureProvider<num?>(
  loggedInUserId,
  name: r'loggedInUserIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loggedInUserIdHash,
);
typedef LoggedInUserIdRef = AutoDisposeFutureProviderRef<num?>;
String _$loggedInUserTokenHash() => r'693c3f6f7db07b477dce2d014fd27a9a63a166e9';

/// See also [loggedInUserToken].
final loggedInUserTokenProvider = AutoDisposeFutureProvider<String?>(
  loggedInUserToken,
  name: r'loggedInUserTokenProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loggedInUserTokenHash,
);
typedef LoggedInUserTokenRef = AutoDisposeFutureProviderRef<String?>;
String _$userProfileHash() => r'a723fdd8284f658c2663efc935be246b682f84fb';

/// See also [userProfile].
final userProfileProvider = AutoDisposeFutureProvider<UserProfile>(
  userProfile,
  name: r'userProfileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userProfileHash,
);
typedef UserProfileRef = AutoDisposeFutureProviderRef<UserProfile>;
String _$logoutHash() => r'9556bea3a8e48fa6947ad5c05d6f06fee07db734';

/// See also [logout].
final logoutProvider =
    AutoDisposeProvider<CallableAction<Either<BasicError, bool>, void>>(
  logout,
  name: r'logoutProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$logoutHash,
);
typedef LogoutRef
    = AutoDisposeProviderRef<CallableAction<Either<BasicError, bool>, void>>;
String _$registerHash() => r'eac7b37f7e240bd2e18085826b31c51bd7a705cf';

/// See also [register].
final registerProvider =
    AutoDisposeProvider<CallableAction<Either<BasicError, bool>, RegisterDto>>(
  register,
  name: r'registerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$registerHash,
);
typedef RegisterRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, RegisterDto>>;
String _$loginHash() => r'a994bedae14b5630526609b66f667ecf1c382071';

/// See also [login].
final loginProvider =
    AutoDisposeProvider<CallableAction<Either<BasicError, bool>, LoginDto>>(
  login,
  name: r'loginProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginHash,
);
typedef LoginRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, LoginDto>>;
String _$sendPasswordResetEmailHash() =>
    r'3d674f7e9b9b4ac4ccc5d8dac7bf2df12be118bd';

/// See also [sendPasswordResetEmail].
final sendPasswordResetEmailProvider = AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, SendPasswordResetEmailDto>>(
  sendPasswordResetEmail,
  name: r'sendPasswordResetEmailProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sendPasswordResetEmailHash,
);
typedef SendPasswordResetEmailRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, SendPasswordResetEmailDto>>;
String _$resetPasswordHash() => r'55ba504cb17bbc4329226b482a8531b56695ea69';

/// See also [resetPassword].
final resetPasswordProvider = AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, ResetPasswordDto>>(
  resetPassword,
  name: r'resetPasswordProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$resetPasswordHash,
);
typedef ResetPasswordRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, ResetPasswordDto>>;
