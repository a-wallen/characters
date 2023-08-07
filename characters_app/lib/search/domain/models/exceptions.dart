/// The base class for all exceptions in the application
abstract class CharactersAppException implements Exception {
  /// Construct an instance of [CharactersAppException] with the given message.
  CharactersAppException(this.message);

  /// The message for the excecption
  final String message;
}

/// A general error when connection cannot be established
class ConnectionError extends CharactersAppException {
  /// Construct an instance of [ConnectionError] with the given message.
  ConnectionError() : super('No connection');
}

/// An error when the request times out
class TimeOutError extends CharactersAppException {
  /// Construct an instance of [TimeOutError] with the given message.
  TimeOutError() : super('Time out');
}

/// When the request is malformed
class BadRequestError extends CharactersAppException {
  /// Construct an instance of [BadRequestError] with the given message.
  BadRequestError() : super('Bad request');
}

/// When the request is unauthorized
class UnauthorizedError extends CharactersAppException {
  /// Construct an instance of [UnauthorizedError] with the given message.
  UnauthorizedError() : super('Unauthorized');
}

/// When the request is forbidden
class ForbiddenError extends CharactersAppException {
  /// Construct an instance of [ForbiddenError] with the given message.
  ForbiddenError() : super('Forbidden');
}

/// When the request is not found
class NotFoundError extends CharactersAppException {
  /// Construct an instance of [NotFoundError] with the given message.
  NotFoundError() : super('Not found');
}

/// When the response cannot be formatted properly
class JSONDecodeError extends CharactersAppException {
  /// Construct an instance of [JSONDecodeError] with the given message.
  JSONDecodeError() : super('JSON decode error');
}

/// When the request has been rate limited
class RateLimitExceeded extends CharactersAppException {
  /// Construct an instance of [RateLimitExceeded] with the given message.
  RateLimitExceeded() : super('Rate limit exceeded');
}
