// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_controller.dart';

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

String _$myConversationsHash() => r'f31a5a35fed083bb6ffdf3ee8c617a1acc535f9c';

/// See also [myConversations].
final myConversationsProvider = AutoDisposeFutureProvider<List<Conversation>>(
  myConversations,
  name: r'myConversationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myConversationsHash,
);
typedef MyConversationsRef = AutoDisposeFutureProviderRef<List<Conversation>>;
String _$conversationMessagesHash() =>
    r'7b068bf466ec39125ebf40c50f97ffaf492a9cb5';

/// See also [conversationMessages].
class ConversationMessagesProvider
    extends AutoDisposeProvider<Stream<ConversationMessages>> {
  ConversationMessagesProvider(
    this.id,
  ) : super(
          (ref) => conversationMessages(
            ref,
            id,
          ),
          from: conversationMessagesProvider,
          name: r'conversationMessagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$conversationMessagesHash,
        );

  final num id;

  @override
  bool operator ==(Object other) {
    return other is ConversationMessagesProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef ConversationMessagesRef
    = AutoDisposeProviderRef<Stream<ConversationMessages>>;

/// See also [conversationMessages].
final conversationMessagesProvider = ConversationMessagesFamily();

class ConversationMessagesFamily extends Family<Stream<ConversationMessages>> {
  ConversationMessagesFamily();

  ConversationMessagesProvider call(
    num id,
  ) {
    return ConversationMessagesProvider(
      id,
    );
  }

  @override
  AutoDisposeProvider<Stream<ConversationMessages>> getProviderOverride(
    covariant ConversationMessagesProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'conversationMessagesProvider';
}

String _$createConversationHash() =>
    r'fbc02ee1d01bbd03b53a9f191d7c26ae71c5930a';

/// See also [createConversation].
final createConversationProvider = AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, CreateConversationDto>>(
  createConversation,
  name: r'createConversationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$createConversationHash,
);
typedef CreateConversationRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, CreateConversationDto>>;
String _$sendMessageHash() => r'3c7b44ae7b5ffa397abec18556041e046ededa71';

/// See also [sendMessage].
final sendMessageProvider = AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, SendMessageDto>>(
  sendMessage,
  name: r'sendMessageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sendMessageHash,
);
typedef SendMessageRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, SendMessageDto>>;
