import 'package:fpdart/fpdart.dart';

typedef EitherResponse<T> = Either<String, T>;

typedef FutureEitherResponse<T> = Future<Either<String, T>>;
