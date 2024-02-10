import 'package:failures/failures.dart';
import 'package:fpdart/fpdart.dart';

class GenerateForQueries {
  const GenerateForQueries();
}

typedef ExceptionToFailureMapper<ReturnType>
    = Future<Either<Failure, ReturnType>> Function({
  required Future<Either<Failure, ReturnType>> Function() callback,
});

class Query<ReturnType> {
  const Query({
    this.withCaching = false,
    this.mapExceptionToFailure,
  });

  final bool withCaching;
  final ExceptionToFailureMapper<ReturnType>? mapExceptionToFailure;
}
