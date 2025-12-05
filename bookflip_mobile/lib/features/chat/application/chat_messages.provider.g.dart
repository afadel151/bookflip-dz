// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(messagesStream)
const messagesStreamProvider = MessagesStreamFamily._();

final class MessagesStreamProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Message>>,
          List<Message>,
          Stream<List<Message>>
        >
    with $FutureModifier<List<Message>>, $StreamProvider<List<Message>> {
  const MessagesStreamProvider._({
    required MessagesStreamFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'messagesStreamProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$messagesStreamHash();

  @override
  String toString() {
    return r'messagesStreamProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<Message>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Message>> create(Ref ref) {
    final argument = this.argument as String;
    return messagesStream(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MessagesStreamProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$messagesStreamHash() => r'6b791bd06af678d3ccf4b43dc742b94bafdfd809';

final class MessagesStreamFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<Message>>, String> {
  const MessagesStreamFamily._()
    : super(
        retry: null,
        name: r'messagesStreamProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MessagesStreamProvider call(String chatId) =>
      MessagesStreamProvider._(argument: chatId, from: this);

  @override
  String toString() => r'messagesStreamProvider';
}
