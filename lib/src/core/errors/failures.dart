import 'package:equatable/equatable.dart';

// Clase base abstracta para todos los fallos.
abstract class Failure extends Equatable {
  const Failure(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

// Fallo para errores del servidor (API).
class ServerFailure extends Failure {
  const ServerFailure({String message = 'Error del servidor.'})
    : super(message);
}

// Fallo para errores de caché local.
class CacheFailure extends Failure {
  const CacheFailure({String message = 'Error de caché.'}) : super(message);
}

// Fallo para problemas de conexión de red.
class NetworkFailure extends Failure {
  const NetworkFailure({String message = 'Sin conexión a internet.'})
    : super(message);
}
