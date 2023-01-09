import 'package:ask_it/core/basic_error.dart';
import 'package:fpdart/fpdart.dart';

typedef EitherResponse<T> = Either<BasicError, T>;

typedef FutureEitherResponse<T> = Future<Either<BasicError, T>>;
