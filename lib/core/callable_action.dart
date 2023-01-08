import 'package:flutter_riverpod/flutter_riverpod.dart';

class CallableAction<T, R> extends StateNotifier<AsyncValue<T?>> {
  CallableAction(this._action, this._arg) : super(AsyncValue.data(null));

  final Future<T> Function(R) _action;
  R? _arg;

  bool get isBusy => state.isLoading;

  set arg(R? arg) {
    _arg = arg;
  }

  Future<T> call() async {
    state = AsyncValue.loading();
    final value = await _action(_arg!);
    state = AsyncValue.data(value);

    return value;
  }
}
