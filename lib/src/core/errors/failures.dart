import 'package:equatable/equatable.dart';

// Base class to represent different types of failures in the application.
abstract class Failure extends Equatable {
  const Failure(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

// Failure for server-related errors.
class ServerFailure extends Failure {
  const ServerFailure({String message = 'Error del servidor.'})
    : super(message);
}

// Failure for local cache errors.
class CacheFailure extends Failure {
  const CacheFailure({String message = 'Error de caché.'}) : super(message);
}

// Failure for network connection problems.
class NetworkFailure extends Failure {
  const NetworkFailure({String message = 'Sin conexión a internet.'})
    : super(message);
}
