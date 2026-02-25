import 'package:fpdart/fpdart.dart';
import 'package:todo_list_example/src/core/errors/failures.dart';

abstract class Usecase<I, O> {
  Future<Either<Failure, O>> call(I params);
}

class NoParams {}
