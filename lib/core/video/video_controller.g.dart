// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_controller.dart';

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

String _$myVideosHash() => r'5aa04624e5389bb87328e59dfcf62d5a38ce10f9';

/// See also [myVideos].
final myVideosProvider = AutoDisposeFutureProvider<List<Video>>(
  myVideos,
  name: r'myVideosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$myVideosHash,
);
typedef MyVideosRef = AutoDisposeFutureProviderRef<List<Video>>;
String _$uploadersHash() => r'886335a35a7ead75781ffafd4789ef7a3034a53a';

/// See also [uploaders].
final uploadersProvider = AutoDisposeFutureProvider<List<VideoUploaderUser>>(
  uploaders,
  name: r'uploadersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$uploadersHash,
);
typedef UploadersRef = AutoDisposeFutureProviderRef<List<VideoUploaderUser>>;
String _$tutorVideosHash() => r'a0ba52ef60cb304259488088d2482d3a4c65b8a8';

/// See also [tutorVideos].
class TutorVideosProvider extends AutoDisposeFutureProvider<List<Video>> {
  TutorVideosProvider(
    this.tutorId,
  ) : super(
          (ref) => tutorVideos(
            ref,
            tutorId,
          ),
          from: tutorVideosProvider,
          name: r'tutorVideosProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tutorVideosHash,
        );

  final num tutorId;

  @override
  bool operator ==(Object other) {
    return other is TutorVideosProvider && other.tutorId == tutorId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tutorId.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef TutorVideosRef = AutoDisposeFutureProviderRef<List<Video>>;

/// See also [tutorVideos].
final tutorVideosProvider = TutorVideosFamily();

class TutorVideosFamily extends Family<AsyncValue<List<Video>>> {
  TutorVideosFamily();

  TutorVideosProvider call(
    num tutorId,
  ) {
    return TutorVideosProvider(
      tutorId,
    );
  }

  @override
  AutoDisposeFutureProvider<List<Video>> getProviderOverride(
    covariant TutorVideosProvider provider,
  ) {
    return call(
      provider.tutorId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'tutorVideosProvider';
}

String _$uploadVideoHash() => r'1973b2c81abfc9ce768b99205251c8ba9ced1903';

/// See also [uploadVideo].
final uploadVideoProvider = AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, UploadVideoDto>>(
  uploadVideo,
  name: r'uploadVideoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$uploadVideoHash,
);
typedef UploadVideoRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, UploadVideoDto>>;
String _$updateVideoHash() => r'c30397f3854c8e6a48678df49d17f30b308f7cde';

/// See also [updateVideo].
class UpdateVideoProvider extends AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, UpdateVideoDto>> {
  UpdateVideoProvider(
    this.videoId,
  ) : super(
          (ref) => updateVideo(
            ref,
            videoId,
          ),
          from: updateVideoProvider,
          name: r'updateVideoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateVideoHash,
        );

  final num videoId;

  @override
  bool operator ==(Object other) {
    return other is UpdateVideoProvider && other.videoId == videoId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, videoId.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef UpdateVideoRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, UpdateVideoDto>>;

/// See also [updateVideo].
final updateVideoProvider = UpdateVideoFamily();

class UpdateVideoFamily
    extends Family<CallableAction<Either<BasicError, bool>, UpdateVideoDto>> {
  UpdateVideoFamily();

  UpdateVideoProvider call(
    num videoId,
  ) {
    return UpdateVideoProvider(
      videoId,
    );
  }

  @override
  AutoDisposeProvider<CallableAction<Either<BasicError, bool>, UpdateVideoDto>>
      getProviderOverride(
    covariant UpdateVideoProvider provider,
  ) {
    return call(
      provider.videoId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'updateVideoProvider';
}

String _$deleteVideoHash() => r'7eded9eae02ba0fb375e080c879e30ec2b27bc57';

/// See also [deleteVideo].
final deleteVideoProvider =
    AutoDisposeProvider<CallableAction<Either<BasicError, bool>, num>>(
  deleteVideo,
  name: r'deleteVideoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deleteVideoHash,
);
typedef DeleteVideoRef
    = AutoDisposeProviderRef<CallableAction<Either<BasicError, bool>, num>>;
