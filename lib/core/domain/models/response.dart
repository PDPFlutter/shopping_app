class Response {
  final bool success;
  final List<Error>? errors;
  final String? message;
  final Object? data;

  const Response({
    required this.success,
    this.errors,
    this.message,
    this.data,
  });
}

class Error {
  final String key;
  final Object? value;
  final String message;

  const Error({
    required this.key,
    this.value,
    required this.message,
  });
}