import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

// failure yang berhubungan dengan server API
class ServerFailure extends Failure {
  const ServerFailure() : super('An error occurred on the server.');
}

class NetworkFailure extends Failure {
  const NetworkFailure() : super('No internet connection.');
}

class CacheFailure extends Failure {
  const CacheFailure() : super('Failed to retrieve data from cache.');
}

class NotFoundFailure extends Failure {
  const NotFoundFailure(String message) : super(message);
}
